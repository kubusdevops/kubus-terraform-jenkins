variable "region" {
  type        = string
  description = "aws region"
  default     = "us-east-1"
}

variable "controller_instance_type" {
  type        = string
  description = "instance type"
  default     = "t3.medium"
}

variable "ami_id" {
  type        = string
  description = "ami"
  default     = "ami-081b0a6eac00b4f53"
}

variable "vpc_id" {
  type        = string
  description = "vpc"
  default     = "vpc-0f8ffa69427e755ff"
}

variable "agent_instance_type" {
  type        = string
  description = "instance type"
  default     = "t3.large"
}

variable "key_name" {
  type        = string
  description = "key"
  default     = "kubuskey"
}

variable "subnets" {
  type        = list(string)
  description = "subnets"
  default     = ["subnet-04eff04788c28873e", "subnet-08a5324bee0d68c14", "subnet-09e89ecbfee521bc8"]
}

variable "zone_id" {
  type = string
  description = "zone id"
  default = "vpc-0f8ffa69427e755ff"
}


variable "domain_name" {
  type = string
  description = "domain"
  default = "jenkins.techrite.org"

}