variable "vpc_cidr" {
    type = map(string)
    default = {
        prd = "10.0.0.0/16"
        dev = "172.31.0.0/16"
    }
}

variable "project"{
    type = string
    default = "otsumami"
}

variable "env" {
    type = string
    default = "dev"
}

variable "subnet_cidr" {
    type = map(string)
    default = {
        dev_subnet_1a = "172.31.1.0/24"
        dev_subnet_1c = "172.31.2.0/24"
    }
}