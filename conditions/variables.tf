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