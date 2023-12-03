resource "aws_vpc" "main-vpc" { 
cidr_block = var.vpc-cidr 
tags = { 
Name = var.vpc-name 
} 
} 

resource "aws_subnet" "main-subnet" { 
vpc_id = aws_vpc.main-vpc.id 
cidr_block = var.subnet-cidr 
tags = { 
Name = var.subnet-name 
} 
} 

resource "aws_internet_gateway" "gw" { 
vpc_id = aws_vpc.main-vpc.id 
tags = { 
Name = var.igw-name 
} 
} 

resource "aws_route_table" "rt" { 
vpc_id = aws_vpc.main-vpc.id 
route { 
cidr_block = var.rt-cidr 
gateway_id = aws_internet_gateway.gw.id 
} 
tags = { 
Name = var.rt-name 
} 
} 

resource "aws_route_table_association" "rta" { 
subnet_id = aws_subnet.main-subnet.id 
route_table_id = aws_route_table.rt.id 
} 


