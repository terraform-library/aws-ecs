output "domain_identity_arn" "ses_domain_arn" {
  description = "Domin and ARN of the SES domain identity"
  value       = "${join("-", list(aws_ses_domain_identity.ses_domain.domain, aws_ses_domain_identity.ses_domain.arn))}"
}