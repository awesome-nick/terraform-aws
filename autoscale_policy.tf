resource "aws_autoscaling_policy" "awesome_asg_policy" {
    name = "webservers_autoscale_policy"
    policy_type = "TargetTrackingScaling"
    autoscaling_group_name = "${aws_autoscaling_group.awesome_asg.name}"
    target_tracking_configuration {
        predefined_metric_specification {
            predefined_metric_type = "ASGAverageCPUUtilization"
        }
        target_value = "60"
    }
}