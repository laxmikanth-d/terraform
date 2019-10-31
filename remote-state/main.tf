resource "aws_s3_bucket" "s3backend" {
  bucket = "this-is-globally-unique"
  versioning = {
      enabled = true
  }  
  force_destroy = true
}
