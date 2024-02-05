resource "aws_s3_bucket" "test_s3_bucket-1" {
  bucket = "terraform-remote-backend-tauqeer-007"
  
}

resource "aws_dynamodb_table" "my_dynamo_table" {
  name = "terraform-demo-state-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}
