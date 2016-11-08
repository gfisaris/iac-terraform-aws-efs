resource "aws_efs_file_system" "ecs_common" {
  creation_token = "ecs_common"
  
  tags {
    Name = "ecs_common"
  }

}

output "FS-ECS_Common-ID" {
  value = "${aws_efs_file_system.ecs_common.id}"
}
