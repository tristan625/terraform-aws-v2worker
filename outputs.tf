# Shree Ganeshayah Namah

output "public_ip" {
  value = aws_instance.v2_worker.public_ip
}

output "private_ip" {
  value = aws_instance.v2_worker.private_ip
}

output "instance_id" {
  value = aws_instance.v2_worker.id
}
