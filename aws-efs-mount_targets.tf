resource "aws_efs_mount_target" "master_public_subnets" {
  count = "${lookup(var.selected_aws_region_subnets_public_count, var.selected_aws_region)}"
  file_system_id = "${aws_efs_file_system.master.id}"

  subnet_id       = "${data.terraform_remote_state.aws_vpc.subnet_public_id[count.index]}"
  security_groups = ["${data.terraform_remote_state.aws_vpc.security_group_efs_id}"]
}
