data "aws_iam_policy_document" "s3_bucket_policy" {
  statement {
    sid       = "Statement1"
    effect    = "Allow"
    resources = [ "${aws_s3_bucket.bucket.arn}/*"]
    actions   = ["s3:GetObject"]

    principals {
      type        = "*"
      identifiers = ["*"]
    }
  }
}
