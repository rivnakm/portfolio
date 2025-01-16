locals {
  s3_origin_id = "michaelrivnak-dot-dev"
}

resource "aws_cloudfront_distribution" "site_distribution" {
  enabled = true
  is_ipv6_enabled = true
  default_root_object = "index.html"

  origin {
    domain_name = aws_s3_bucket.site_bucket.bucket_regional_domain_name
    origin_id = local.s3_origin_id
  }

  aliases = [
    "michaelrivnak.dev",
    "michaelrivnak.com"
  ]

  viewer_certificate {
    acm_certificate_arn = data.aws_acm_certificate.ssl_cert.arn
    ssl_support_method = "sni-only"
  }

  default_cache_behavior {
    allowed_methods = ["GET", "HEAD"]
    cached_methods = ["GET", "HEAD"]
    target_origin_id = local.s3_origin_id

    viewer_protocol_policy = "allow-all"

    cache_policy_id = aws_cloudfront_cache_policy.site_cache_policy.id
  }

  restrictions {
    geo_restriction {
      restriction_type = "whitelist"
      locations = ["US", "CA", "GB", "DE"]
    }
  }
}

output "site_distribution" {
  value = aws_cloudfront_distribution.site_distribution.id
}

resource "aws_cloudfront_cache_policy" "site_cache_policy" {
  name = "site_distribution_cache_policy"
  min_ttl = 60

  parameters_in_cache_key_and_forwarded_to_origin {
    cookies_config {
      cookie_behavior = "none"
    }

    headers_config {
      header_behavior = "none"
    }

    query_strings_config {
      query_string_behavior = "none"
    }
  }
}
