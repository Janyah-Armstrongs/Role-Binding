resource "aws_iam_role" "ec2_role" {
  name = var.role_name   # Uses a variable for the role name


  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ec2.amazonaws.com"
      }
    }]
  })
}

resource "aws_iam_role_policy" "basic_policy" {
  name = "read-only-s3"
  role = aws_iam_role.ec2_role.id


  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect   = "Allow"
      Action   = ["s3:getObject"]  # Allows read access to S3 objects
      Resource = "*"
    }]
  })
}