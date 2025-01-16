resource "aws_s3_bucket" "site_bucket" {
}

output "site_bucket" {
  value = aws_s3_bucket.site_bucket.bucket
}

resource "aws_s3_bucket_website_configuration" "site_bucket_www_config" {
  bucket = aws_s3_bucket.site_bucket.id
  index_document {
    suffix = "index.html"
  }
}
resource "aws_s3_bucket_public_access_block" "site_bucket_www_config" {
  bucket = aws_s3_bucket.site_bucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_policy" "public_bucket_policy" {
  bucket = aws_s3_bucket.site_bucket.id
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
