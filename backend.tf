terraform {
 backend "s3" {
   bucket       = "abhi100bucket121"
   key          = "path/to/state/Ml-ops"
   region       = "us-east-1"
   use_lockfile = true
   encrypt = true 
 }
}