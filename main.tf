resource "aws_vpc" "chanduvpc" {
  cidr_block = var.vpcinfo.vpc_cidr

  tags = {
    Name = "chinnuvpc"
  }
}
resource "aws_subnet" "chandusub" {
  count  = length(var.vpcinfo.tags)
  vpc_id = aws_vpc.chanduvpc.id

  cidr_block        = cidrsubnet(var.vpcinfo.vpc_cidr, 8, count.index) # implicity dependence
  availability_zone = "${var.vpcinfo.region}${var.vpcinfo.zones[count.index]}"


  tags = {
    Name = var.vpcinfo.tags[count.index]
  }
  depends_on = [aws_vpc.chanduvpc] # explicity dependane

}
