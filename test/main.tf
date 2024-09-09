module "cloudwatch" {
  source = "../"

  db_instance_id                  = "test"
  redis_instance_id               = "test"
  redis_clusters                  = "2"
  mq_instance_id                  = "test"
  aws_sns_topic_arn               = "arn:aws:sns:ap-northeast-2:{AWS_YOUR_ACCOUNT}:test"
  database_connections_threshold  = 70
  rabbit_mq_memory_used_threshold = 32000000
}