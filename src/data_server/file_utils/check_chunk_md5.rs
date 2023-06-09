use dependencies_sync::md5::{Digest, Md5};
use dependencies_sync::hex::decode;

pub fn check_chunk_md5(md5: &String, chunk: &Vec<u8>) -> bool {
    let mut hasher = Md5::new();
    hasher.update(chunk);
    let result = hasher.finalize();
    
    decode(md5).unwrap().to_vec() == result.to_vec()
}