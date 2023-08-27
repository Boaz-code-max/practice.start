#variable "cidrsubnets" {
#  type        = list(string)
#  default     = ["10.10.0.0/24","10.10.1.0/24","10.10.2.0/24"]
#  description = "for sub1"
#}
#variable "tags-names" {
#    type = list(string)
#    default = ["app1","web","db"]
#    description = "tagnames"
#  
#}
#variable "vpc_cidr" {
#    type = string
#    default = "10.10.0.0/16"
#    description = "for vpc"
#  
#}
#
#variable "region" {
# type = string
# default = "ap-south-1"
#}
#
#variable "zones" {
#    type = list(string)
#    default = [ "a","b","c" ]
#  
#}


variable "vpcinfo" {
  type = object({
    tags     = list(string),
    vpc_cidr = string,
    region   = string,
    zones    = list(string)
  })
  default = {
    tags     = ["app1", "web", "db"]
    vpc_cidr = "10.10.0.0/16"
    region   = "ap-south-1"
    zones    = ["a", "b", "c"]
  }
}

