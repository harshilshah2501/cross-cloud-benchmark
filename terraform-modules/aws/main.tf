resource "aws_instance" "benchmark_instance" {
  ami           = "ami-038bba9a164eb3dc1" # Amazon Linux 2 AMI
  instance_type = "t2.micro"               # Free-tier eligible instance type

  tags = {
    Name = "benchmark-aws-instance"       # Instance tag
  }

  # Associate a security group for SSH access
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  # Use a key pair for SSH access
  key_name = aws_key_pair.my_key.key_name
}

# Security Group to Allow SSH Access
resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    ipv6_cidr_blocks = ["2001:ac8:28:9001:607a:3dc2:36e0:c303/128"]   # Replace with your IP address
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    ipv6_cidr_blocks  = ["::/0"] # Allow all IPv6 outbound traffic
  }
}

# Key Pair for SSH Access
resource "aws_key_pair" "my_key" {
  key_name   = "benchmark-key"
  public_key = file("~/.ssh/id_rsa.pub")   # Path to your public key file
}