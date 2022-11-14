resource "aws_ecs_cluster" "main" {
  name = "ecs-cluster"
}

resource "aws_ecs_service" "ecs_ser" {
  name            = "hello-world-service"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.hello_world.arn
  desired_count   = 1
  launch_type     = "FARGATE"

  network_configuration {
    security_groups = [aws_security_group.hello_world_task.id]
    subnets         = [aws_subnet.sub1.id, aws_subnet.sub2.id]
  }

}


