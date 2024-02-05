resource "aws_s3_bucket" "aws_s3_bucket" {
  bucket = "remote-backend"
  
}

resource "aws_dynamodb_table" "my_dynamo_table" {
  name = "terraform-demo-state-table-2"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}
