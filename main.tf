terraform {
  required_version = ">= 0.10.3" # introduction of Local Values configuration language feature
}

module "label" {
  source      = "git::https://github.com/terraform-library/terraform-label.git?ref=master"
  name        = "${var.name}"
  environment = "${var.environment}"
  managedby   = "${var.managedby}"
  delimiter   = "${var.delimiter}"
}

resource "aws_ses_domain_identity" "ses_domain" {
  domain = "${var.ses_domain}"
}

resource "aws_route53_record" "ses_domain_verification_record" {
  zone_id = "${var.hosted_zone_id}"
  name    = "_amazonses.${var.ses_domain}"
  type    = "TXT"
  ttl     = "600"
  records = ["${aws_ses_domain_identity.ses_domain.verification_token}"]
}