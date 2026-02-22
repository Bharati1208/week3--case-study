terraform {
  backend "s3" {
    bucket = "bharati-terraform-state-2026"
    key    = "week3_case study/terraform.tfstate"
    region = "us-east-1"
  }
}
