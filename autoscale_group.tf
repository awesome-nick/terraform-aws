resource "aws_autoscaling_group" "awesome_asg" {
  launch_configuration = "${aws_launch_configuration.awesome_launch_conf.id}"
  availability_zones   = "${var.azs}"
  load_balancers = ["${aws_elb.awesome_elb.name}"]
  min_size         = 2
  max_size         = 10
  desired_capacity = 3

  tag {
    key                 = "Name"
    value               = "terraform-asg"
    propagate_at_launch = true
  }
}
