terraform {
  backend "s3" {
    bucket         = "jenkins20-s3"
    key            = "Users/johanapetit-frere/tickets/jenkins/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "Jenkins20"
    encrypt        = true
  }
}