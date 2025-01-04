terraform {
  backend "s3" {
    bucket         = "my-terraform1-state1-bucket1" # Ensure this matches the bucket created
    key            = "path/to/my/statefile.tfstate"
    region         = "us-east-1" # Use the same region as the bucket
    encrypt        = true
    dynamodb_table = "terraform-lock-table" # Use the DynamoDB table created
    acl            = "private"
  }
}
