terraform {
    backend "s3" {
        bucket = "this-is-globally-unique"
        key = "terraform/tfstate.tfstate"
        profile = "default"
        region = "us-west-2"
    }
}