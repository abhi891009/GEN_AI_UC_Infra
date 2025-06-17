terraform {
 backend "s3" {
   bucket       = "pavithra-bucket0001"
   key          = "path/to/state/Ml-ops"
   region       = "us-west-2"
   use_lockfile = true
   encrypt = true 
 }
}