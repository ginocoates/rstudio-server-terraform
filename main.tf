# rstudio server
resource "aws_instance" "rstudio" {
  ami = "${lookup(var.images, var.region)}"

  # free tier eligible
  instance_type = "${var.instance_type}"

  # list of security groups for the instance
  security_groups = [
    "${aws_security_group.rstudio_security_group.name}",
  ]

  availability_zone = "${var.zone}"

  key_name = "${var.keypair_name}"

  # add a public IP address
  associate_public_ip_address = true

  root_block_device = {
    "volume_type"           = "standard"
    "volume_size"           = 100
    "delete_on_termination" = false
  }

  tags {
    Name = "Rstudio Server"
  }

  provisioner "file" {
    connection {
      host        = "${aws_instance.rstudio.public_ip}"
      type        = "ssh"
      user        = "ubuntu"
      private_key = "${file(var.private_key)}"
    }

    source      = "provisioners/"
    destination = "/tmp"
  }

  provisioner "remote-exec" {
    connection {
      host        = "${aws_instance.rstudio.public_ip}"
      type        = "ssh"
      user        = "ubuntu"
      private_key = "${file(var.private_key)}"
    }

    inline = [
      "sudo sh /tmp/provision.sh ${var.rstudio_password}",
    ]
  }
}

resource "aws_eip" "rstudio_eip" {
  instance = "${aws_instance.rstudio.id}"
}
