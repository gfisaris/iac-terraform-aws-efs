resource "aws_efs_file_system" "ecs_common" {
  creation_token = "ecs_common"

  tags {
    Name = "ecs_common"
  }

}

output "filesystem_ecs_common_id"   {value = "${aws_efs_file_system.ecs_common.id}"}
