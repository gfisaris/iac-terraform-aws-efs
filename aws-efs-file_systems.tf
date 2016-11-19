resource "aws_efs_file_system" "master" {
  creation_token = "${data.terraform_remote_state.project.name}"

  tags {
    Name = "${data.terraform_remote_state.project.name}"
  }

}

output "filesystem_master_id"   {value = "${aws_efs_file_system.master.id}"}
