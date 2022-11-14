
resource "aws_route_table_association" "pubsub1_asso" {
  subnet_id      = aws_subnet.sub1.id
  route_table_id = aws_route_table.pub_rt.id
}

resource "aws_route_table_association" "pubsub2_asso" {
  subnet_id      = aws_subnet.sub2.id
  route_table_id = aws_route_table.pub_rt.id
}
