resource "aws_efs_mount_target" "ecs_common_pubnet" {
  #count = "${data.terraform_remote_state.aws_vpc.number_of_public_subnets}"
  count = 2 
  file_system_id = "${aws_efs_file_system.ecs_common.id}"
  subnet_id = "${data.terraform_remote_state.aws_vpc.vpc_subnets_public[count.index]}"
}
