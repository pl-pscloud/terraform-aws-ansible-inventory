data  "template_file" "ec2tpl" {
  template = file("../ansible/templates/inventory.tpl")
  vars = {
    ec2name = var.pscloud_group_name
    ec2ip = var.pscloud_ips
  }
}

resource "local_file" "ec2tpl_file" {
  content  = data.template_file.ec2tpl.rendered
  filename = "${var.pscloud_file_path}/${var.pscloud_company}-${var.pscloud_env}-${var.pscloud_group_name}"
}