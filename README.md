# 신규 인프라 생성 시 사용하는 CloudWatch Alarms using Terraform

## RDS, ElastiCache, AmazonMQ

### 사용 예시.
/test/main.tf 파일에서 등록할 Third-party names와 연결할 SNS Topic ARN을 입력합니다.

그 외 default 값을 사용하지 않을 경우 별도로 val을 등록하여 사용합니다. (ex. database_connections_threshold)
```hcl
module "cloudwatch" {
  source = "../"

  db_instance_id                  = "test"
  redis_instance_id               = "test"
  redis_clusters                  = "2"
  mq_instance_id                  = "test"
  aws_sns_topic_arn               = "arn:aws:sns:ap-northeast-2:12345678:test"
  database_connections_threshold  = 70
  rabbit_mq_memory_used_threshold = 32000000
}
```

### Get Started
./test
```bash
terraform init
AWS_PROFILE=lyon terraform plan
AWS_PROFILE=lyon terraform apply -auto-approve
```