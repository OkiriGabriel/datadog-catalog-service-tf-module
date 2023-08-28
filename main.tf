module "datadog" {
  source                = "./module"
  aws_account_id        = var.aws_account_id
  datadog_api_key       = var.datadog_api_key
  env                   = "prod"
  namespace             = "datadog"
create_elb_logs_bucket = var.create_elb_logs_bucket
filter_tags = var.filter_tags
extra_policy_arns = var.extra_policy_arns
aws_region = var.aws_region
enable_datadog_aws_integration = var.enable_datadog_aws_integration
log_exclude_at_match = var.log_exclude_at_match
elb_logs_bucket_prefix = var.elb_logs_bucket_prefix

excluded_regions = var.excluded_regions
dd_forwarder_template_version = var.dd_forwarder_template_version
dd_forwarder_dd_site = var.dd_forwarder_dd_site

  cloudtrail_bucket_id  = var.cloudtrail_bucket_id
  cloudtrail_bucket_arn = var.cloudtrail_bucket_arn

  cloudwatch_log_groups = var.cloudwatch_log_groups

  account_specific_namespace_rules = {
    elasticache = true
    network_elb = true
    lambda      = true
  }
}
