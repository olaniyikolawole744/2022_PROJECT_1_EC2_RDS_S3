# resource to create security rule for ingress creation
resource "aws_security_group_rule" "securityRuleTemplate" {
  description       = "Add additional Inbound Rule to Security Group"
  type              = "ingress"
  security_group_id = var.securityGroupIdToAddRuleTo
  from_port         = var.securityRuleFromPort
  to_port           = var.securityRuleToPort
  protocol          = "tcp"
  cidr_blocks       = [var.securityGroupRuleCidrBlock]
}