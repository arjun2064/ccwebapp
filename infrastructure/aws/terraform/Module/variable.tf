variable "env" {
description = "Which environment do you want (options: dev,prod):"
} 
variable aws_region{
    type="string"
}
variable "vpcname" {
    type="string"
}
variable "vpcCidrBlock" {
  type="string"
}


variable "SubnetZones" {
  type= "list"

}


variable "Cidrblock" {
  type = "list"

  default=[
    "10.0.4.0/24",
    "10.0.2.0/24",
    "10.0.3.0/24"
  ]
}


