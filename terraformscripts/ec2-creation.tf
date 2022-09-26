provider "aws"{
   region  = "ap-south-1" 
   }

resource "aws_instance" "AWSEC2I"{
     count   = 1
     ami     =  "ami-05c8ca4485f8b138a"
     instance_type = "t2.micro"
     security_groups = ["launch-wizard-3"]
     key_name        = "vijaymajunathas"
     tags = {
        Name = "tomcats"
     }
}

