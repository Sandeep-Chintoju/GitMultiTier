output "PublicIP-MyServer-1" {
  value = aws_instance.appserver1.public_ip
}

output "PrivateIP-MyServer-1" {
  value = aws_instance.appserver1.private_ip
}




output "PublicIp-MyServer-2" {
  value = aws_instance.appserver2.public_ip
}

output "PrivateIP-MyServer-2" {
  value = aws_instance.appserver2.private_ip
}



output "dbendpoint" {
  value = aws_db_instance.dbserver.endpoint
}