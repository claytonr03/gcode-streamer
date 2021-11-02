static RELEASE_VERSION: &str = "0.1";

extern crate clap;
use clap::{Arg, App, SubCommand};

use std::fs::File;
use std::io::{self, BufRead};
use std::{thread, time};
// use std::io::prelude::*;
use std::path::Path;
use std::time::Duration;

use regex::Regex;

use serialport::{available_ports, SerialPortType};



/*
    SERIAL OPERATIONS
*/

fn list_ports(){
    match available_ports() {
        Ok(ports) => {
            match ports.len() {
                0 => println!("No ports found"),
                1 => println!("Found 1 port:"),
                n => println!("Found {} ports:", n),
            };
            for p in ports {
                println!(" {}", p.port_name);
            }
        }
        Err(e) => {
            eprintln!("{:?}", e);
            eprintln!("Error listing serial ports");
        }
    }
}

fn test_port(path: &str, speed: u32) {
    let mut port = serialport::new(path, speed)
        .timeout(Duration::from_millis(10))
        .open().expect("Failed to open port");
    let output = "port test.".as_bytes();
    let sec = time::Duration::from_millis(1000);
    port.write(output).expect("Write failed!");


    // return port;
}

enum SerialReturnType{
    Err = 0,
    Unk = 1,
    None = 2,
    Ok = 3,
    Temp =  4,
}

// fn to_string(raw_input: Vec<u8>) -> String {
//     String::from_utf8(raw_input)
// }

fn check_input(raw_input: &Vec<u8>) -> SerialReturnType {
    let re = Regex::new(r"(?i)\bok\b").unwrap();

    let input_string = String::from_utf8(raw_input.to_vec()).unwrap();
    let mut input_type = SerialReturnType::Unk;
    
    if re.is_match(&input_string) {
        input_type = SerialReturnType::Ok;
    }


    println!("Recv: {}", input_string);
    return input_type;
}

fn check_input_string(input_string: &str) -> SerialReturnType {
    let re = Regex::new(r"(?i)\bok\b").unwrap();

    let mut input_type = SerialReturnType::Unk;
    
    if re.is_match(input_string) {
        input_type = SerialReturnType::Ok;
    }


    println!("Recv: {}", input_string);
    return input_type;
}

// fn check_input(raw_input: String) -> SerialReturnType {
//     // let input_string = String::from_utf8(raw_input);
//     let input_type = SerialReturnType::Ok;
//     return input_type;
// }

fn serial_error(err: std::io::Error) -> SerialReturnType {
    eprintln!("{:?}", err); 
    return SerialReturnType::Err;
}

fn open_port(port: &str, port_speed: u32) -> io::BufReader<Box<dyn serialport::SerialPort>> {
    let mut port = serialport::new(port, port_speed)
        .timeout(Duration::from_millis(10))
        .open().expect("Failed to open port");

    io::BufReader::new(port)
}

fn stream_file(filename: &str, port: &str, port_speed: u32) {
    if let Ok(mut f_iter) = open_file(filename){
        
        let mut serial_buf: Vec<u8> = vec![0; 32];

        // let mut port = serialport::new(port, port_speed)
        // .timeout(Duration::from_millis(10))
        // .open().expect("Failed to open port");

        let mut port = open_port(port, port_speed);

        loop{
            if let Some(fetched_line) = fetch_command(&mut f_iter){
                // output_string(fetched_line);
                println!("Send: {}", fetched_line);
                let mut output = fetched_line;
                output.push('\n');
                port.get_mut().write(output.as_bytes()).expect("Write failed!");
                port.get_mut().flush();
            }else{
                println!("Reached EOF");
                break;
            }
            
            // let mut reader = io::BufReader::new(port);
            let mut line = String::new();
            loop{
                // let ret = match port.read_line(serial_buf.as_mut_slice()){
                let ret = match port.read_line(&mut line) {
                // let ret = match port.read_to_end(&mut serial_buf){
                    Ok(t) => check_input_string(&line),
                    Err(ref e) if e.kind() == io::ErrorKind::TimedOut => SerialReturnType::None,
                    Err(e) => serial_error(e),
                };

                if matches!(ret, SerialReturnType::Ok) {
                    break;
                }
                serial_buf = vec![0; 32]
            }
        }
    }
}


/*
    FILE OPERATIONS
*/
// Opens file and returns buffer iterator
fn open_file(path: &str) -> io::Result::<io::Lines<io::BufReader<File>>> {
    let p = Path::new(path);
    let disp = p.display();
    let f = match File::open(&path) {
        Err(e) => panic!("Couldn't open {}; {}", disp, e),
        Ok(f) => f,
    };
    Ok(io::BufReader::new(f).lines())
}

// fn fetch_lines(file_iter: &mut io::Lines<io::BufReader<File>>, num_lines: i32) -> Vec<String> {
//     let mut v = Vec::<String>::new();
//     for n in 0..num_lines {
//         if let Some(Ok(line)) = file_iter.next(){
//             // s.push_str(&line);
//             v.push(line);
//             // println!("{:?}", line);
//         } else {
//             panic!("No more lines in file");
//         }
//     }
//     return v
// }

fn is_command(line: &String) -> bool {
    let re = Regex::new(r"^[^;\s]\S.*").unwrap();
    if re.is_match(line){
        // println!("Command: {}", line);
        return true;
    } else {
        // println!("Not Command: {}", line);
        return false;
    }
}

fn fetch_command(file_iter: &mut io::Lines<io::BufReader<File>>) -> Option<String> {
    loop {
        if let Some(Ok(line)) = file_iter.next() {
            if is_command(&line){
                return Some(line);
            }
        } else {
            return None;
        }   
    }
}

fn fetch_line(file_iter: &mut io::Lines<io::BufReader<File>>) -> Option<String> {
    if let Some(Ok(line)) = file_iter.next(){
        return Some(line);
    }else{
        return None;
    }
}

/* TODO: output over serial */
fn output_string(line: String){
    println!("{}", line);
}

fn grbl_auto_connect() {
    println!("GRBL auto-connect");
}

fn main() {
    //TODO: Use subcommands to tidy up input parsing
    let matches = App::new("G-Code Streamer")
                    .version(RELEASE_VERSION)
                    .arg(Arg::with_name("grbl-auto-connect")
                        .long("grbl-auto-connect")
                        .help("Enables auto-connect for GRBL controllers (sends $X to unlock)"))
                    .arg(Arg::with_name("input")
                        .short("i")
                        .long("input")
                        .value_name("FILE")
                        .help("Sets the input g-code file (required)")
                        .takes_value(true))
                    .arg(Arg::with_name("port")
                        .short("p")
                        .long("port")
                        .value_name("PORT")
                        .help("Sets the serial port the application will stream to")
                        .takes_value(true))
                    .arg(Arg::with_name("speed")
                        .short("s")
                        .long("speed")
                        .value_name("BAUD RATE")
                        .help("Sets the serial port baud rate")
                        .takes_value(true))
                    .arg(Arg::with_name("list-ports")
                        .short("l")
                        .long("list-ports")
                        .help("List available serial ports"))
                    .get_matches();

    
    if matches.is_present("list-ports") {
        list_ports();
    } else {
        if matches.is_present("grbl-auto-connect") {
            grbl_auto_connect();
        }

        if let Some(input_file) = matches.value_of("input") {
            //TODO: poor handling of input, improve
            let port = matches.value_of("port").expect("no port specified");
            let speed = matches.value_of("speed").expect("no speed specified").parse::<u32>().unwrap();
            stream_file(input_file, port, speed);     
        }
    }
    // list_ports();
    // stream_file("./test/test_square.gcode", "/dev/ttyACM0", 115200);
    // let file_path = String::from("./test/test_square.gcode");
    // /* File opened OK*/
    // if let Ok(mut f_iter) = open_file(file_path){
    //     loop{
    //         // let fetched_lines = fetch_lines(&mut f_iter, 10);
    //         // for line in fetched_lines {
    //         //     println!("{}", line);
    //         // }
    //         if let Some(fetched_line) = fetch_command(&mut f_iter){
    //             output_string(fetched_line);
    //         }else{
    //             println!("Reached EOF");
    //             break;
    //         }
    //     }
    // }

    // open_port("/tmp/ttyS0", 115200);
    // list_ports();

    // let mut s = fetch_lines(&mut f, 10);
}
