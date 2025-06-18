terraform {
 backend "s3" {
   bucket       = "abhi100bucket1211"
   key          = "path/to/state/Ml-ops"
   region       = "us-east-1"
   use_lockfile = true
   encrypt = true 
 }
}