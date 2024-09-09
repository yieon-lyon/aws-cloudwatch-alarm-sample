variable "db_instance_id" {
  description = "The instance ID of the RDS database instance that you want to monitor."
  type        = string
}

variable "redis_instance_id" {
  description = "The instance ID of the ElastiCache instance that you want to monitor."
  type        = string
}

variable "redis_clusters" {
  description = "Number of Redis cache clusters (nodes) to create"
  type        = string
}

variable "mq_instance_id" {
  description = "The instance ID of the AmazonMQ instance that you want to monitor."
  type        = string
}

variable "aws_sns_topic_arn" {
  description = "SNS topic ARN."
  type        = string
}

variable "database_connections_threshold" {
  description = "The maximum amount of database connections used on the DB instance in Count."
  type        = number
  default     = 700
}

variable "cpu_utilization_threshold" {
  description = "The maximum percentage of CPU utilization."
  type        = number
  default     = 80
}

variable "engine_cpu_utilization_threshold" {
  description = "The maximum percentage of Engine CPU utilization."
  type        = number
  default     = 80
}

variable "cpu_credit_balance_threshold" {
  description = "The minimum number of CPU credits (t2 instances only) available."
  type        = number
  default     = 20
}

variable "disk_queue_depth_threshold" {
  description = "The maximum number of outstanding IOs (read/write requests) waiting to access the disk."
  type        = number
  default     = 64
}

variable "freeable_memory_threshold" {
  description = "The minimum amount of available random access memory in Byte."
  type        = number
  default     = 64000000

  # 64 Megabyte in Byte
}

variable "free_storage_space_threshold" {
  description = "The minimum amount of available storage space in Byte."
  type        = number
  default     = 2000000000

  # 2 Gigabyte in Byte
}

variable "swap_usage_threshold" {
  description = "The maximum amount of swap space used on the DB instance in Byte."
  type        = number
  default     = 256000000

  # 256 Megabyte in Byte
}

variable "innodb_history_list_length" {
  description = "The maximum amount of innodb history list length used on the DB instance in Length."
  type        = number
  default     = 1000000
}

variable "curr_connections_threshold" {
  description = "The maximum amount of redis connections used on the Redis instance in Count."
  type        = number
  default     = 10000
}

variable "connection_count_threshold" {
  description = "The maximum amount of mq connections used on the AmazonMQ instance in Count."
  type        = number
  default     = 1500
}

variable "rabbit_mq_memory_used_threshold" {
  description = "The minimum amount of available MQ memory used in Byte."
  type        = number
  default     = 64000000

  # 64 Megabyte in Byte
}

variable "rabbit_mq_disk_free_threshold" {
  description = "The minimum amount of available disk free in Byte."
  type        = number
  default     = 5000000000

  # 5 Gigabyte in Byte
}