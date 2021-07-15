use std::fs::File;
use std::io::{self, BufRead};
// use std::io::prelude::*;
use std::path::Path;

use regex::Regex;

// Opens file and returns buffer iterator
fn open_file(path: String) -> io::Result::<io::Lines<io::BufReader<File>>> {
    let p = Path::new(&path);
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

fn main() {
    let file_path = String::from("./test/test_square.gcode");
    /* File opened OK*/
    if let Ok(mut f_iter) = open_file(file_path){
        loop{
            // let fetched_lines = fetch_lines(&mut f_iter, 10);
            // for line in fetched_lines {
            //     println!("{}", line);
            // }
            if let Some(fetched_line) = fetch_command(&mut f_iter){
                output_string(fetched_line);
            }else{
                println!("Reached EOF");
                break;
            }
        }
    }

    // let mut s = fetch_lines(&mut f, 10);
}
