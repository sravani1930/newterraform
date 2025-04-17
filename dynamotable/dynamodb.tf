resource "aws_dynamodb_table" "terraform_lock" {
  name         = "devopsify-locking"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Environment = "dev"
  }
}