resource "aws_s3_bucket" "site_bucket" {
  bucket = "rivnakm-portfolio-site-${uuid()}"
}

output "site_bucket" {
  value = aws_s3_bucket.site_bucket.bucket
}

resource "aws_s3_bucket_policy" "public_bucket_policy" {
  bucket = aws_s3_bucket.site_bucket.arn
  policy = data.aws_iam_policy_document.public_bucket_access.json
}

data "aws_iam_policy_document" "public_bucket_access" {
  statement {
    actions = [
      "s3:GetObject"
    ]
    resources = [
      "${aws_s3_bucket.site_bucket.arn}/*"
    ]
    principals {
      type = "*"
      identifiers = ["*"]
    }
  }
}
