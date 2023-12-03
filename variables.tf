variable "vpc-name" { 
type = string 
default = "cicd-vpc" 
} 

variable "vpc-cidr" { 
type = string 
default = "10.0.0.0/16" 
} 

variable "subnet-cidr" { 
type = string 
default = "10.0.1.0/24" 
} 

variable "subnet-name" { 
type = string 
default = "subnet2-vpc" 
} 

variable "igw-name" { 
type = string 
default = "igw-vpc" 
} 

variable "rt-name" { 
type = string 
default = "route-vpc" 
} 

variable "rt-cidr" { 
type = string 
default = "0.0.0.0/0" 
} 
