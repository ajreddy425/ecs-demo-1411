resource "aws_ecs_task_set" "example" {
  service         = aws_ecs_service.ecs_ser.id
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.hello_world.arn
  launch_type     = var.launch_type

  #   load_balancer {
  #     target_group_arn = aws_lb_target_group.hello_world.arn
  #     container_name   = "nginx"
  #     container_port   = 80
  #   }
}