#1 preference is command line variables
#2 tfvars
#3 ENV variables#4 variable default values

variable "image_id" {
    type = string
    default = "ami-090252cbe067a9e58" #optional
    description = "RHEL-9 AMI ID" # optional
}

variable "instance_type" {
    type = string
    default = "t3.micro"
    description = "instance name"
}

variable "tags" {
    default = {
        Project = "Expense"
        Environment = "DEV"
        Module = "DB"
        Name = "DB"

    }
}

variable "sg_name" {
    default = "allow_ssh"
}

variable "sg_description" {
    default = "port no 22"
}

variable "ssh_port" {
    default = 22
}

variable "protocol" {
    default = "tcp"
}

variable "allowed_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}