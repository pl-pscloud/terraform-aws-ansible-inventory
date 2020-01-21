output "elb_dns_name" {
  value       = aws_lb.tf_elb_app[*].dns_name
}

output "elb_dns_zoneid" {
  value       = aws_lb.tf_elb_app[*].zone_id
}

output "elb_target_group" {
  value = aws_lb_target_group.tf_elb_target_group
}
