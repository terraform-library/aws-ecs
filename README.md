# AWS SES

**Terraform module to create AWS SES.**


## Usage

* Quick start example:

```hcl
module "ses" {
  source    = "git::https://github.com/terraform-library/aws-ses.git?ref=master"
  ses_domain      = "${var.domain_name}"
  hosted_zone_id  = "${var.zone_id}"
}
```



## Inputs

| Name                  |    Default    | Description                               | Required |
|:----------------------|:-------------:|:------------------------------------------|:--------:|
| `ses_domain`          |    `None`     | Domain name required for creating ses     |    Yes   |
| `hosted_zone_id`      |    `None`     | Provide the AWS Route53 hosted zone       |    Yes   |


       
## 👬 Contribution

- Open pull request with improvements
- Reach out with any feedback [![Github URL]](https://github.com/AmjadHussainSyed)
                                         