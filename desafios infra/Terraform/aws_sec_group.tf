resource "aws_security_group" "default" {
  name = "ec2-elb-sg"
  
  # Liberar a porta 80 para acesso livre via Internet
  ingress {
    from_port = var.aws_secgrp_port
    to_port = var.aws_secgrp_port
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  # Liberar todo o tráfego de saida
  egress {
    from_port = 0
    to_port = 65535
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
