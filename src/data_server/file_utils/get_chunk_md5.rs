use dependencies_sync::md5::{Digest, Md5};
use dependencies_sync::hex;

pub fn get_chunk_md5(chunk: &Vec<u8>) -> String {
    let mut hasher = Md5::new();
    hasher.update(chunk);
    let result = hasher.finalize();

    hex::encode(result)
}
