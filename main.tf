# Shree Ganeshayah Namah

resource "aws_instance" "v2_worker" {
  instance_type = var.instance_type
  # attach an instance profile
  iam_instance_profile = var.has_instance_profile ? var.instance_profile : ""
  # attach the same security groups as the jenkins master instance
  vpc_security_group_ids      = var.security_groups
  subnet_id                   = var.subnet
  ami                         = var.ami
  user_data_base64            = var.has_instance_config ? var.instance_config : ""
  key_name                    = var.key_name
#  associate_public_ip_address = var.attach_public_ip ? true : false
  root_block_device {
    volume_size = var.root_size
  }
  tags = var.tags
}
resource "aws_eip" "v2_worker_eip" {
  vpc      = true
  count    = var.attach_eip ? 1 : 0
}
resource "aws_eip_association" "v2_worker_eip_assoc" {
  instance_id = aws_instance.v2_worker.id
  allocation_id = aws_eip.v2_worker_eip[0].id
  count    = var.attach_eip ? 1 : 0
}
