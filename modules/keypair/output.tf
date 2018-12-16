output "platform_private_key" {
  sensitive = true
  value     = "${data.tls_public_key.platform.private_key_pem}"
}

output "platform_public_key" {
  value     = "${aws_key_pair.platform.public_key}"
}


