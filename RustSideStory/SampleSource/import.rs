// Must specify external crates and bring them into scope

extern crate rustc_serialize;
extern crate chrono;
extern crate sxd_document;

use std::env;
use std::fs::File;
use std::io::Read;
use std::path::Path;
use rustc_serialize::json::Json;
use chrono::*;
