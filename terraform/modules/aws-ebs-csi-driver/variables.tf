variable "cluster_name" {
  type        = string
  description = "name of cluster to associate permissions with"
}

variable "cluster_oidc_provider_url" {
  type        = string
  description = "url for cluster oidc provider"
}

variable "cluster_oidc_provider_arn" {
  type        = string
  description = "arn for cluster oidc provider"
}

variable "service_account" {
  type        = string
  description = "kubernetes service account"
  default     = "ebs-csi-controller-sa"
}

variable "namespace" {
  type        = string
  description = "namespace for kubernetes service account"
  default     = "kube-system"
}

variable "create_namespace" {
  type        = bool
  description = "create kubernetes namespace if it doesn't exist"
  default     = false
}

variable "file_path" {
  type        = string
  description = "path to create file in git repo"
  default     = null
}

variable "chart_version" {
  type        = string
  description = "helm chart version of app to deploy"
  default     = null
}

variable "repository_id" {
  type        = string
  description = "gitlab repository id to create file in"
  default     = null
}

variable "branch" {
  type        = string
  description = "branch to commit file"
  default     = "main"
}

variable "commit_author" {
  type        = string
  description = "git commit author"
  default     = null
}

variable "commit_email" {
  type        = string
  description = "git commit email"
  default     = null
}

variable "create_release_file" {
  type        = bool
  description = "create release file in gitlab"
  default     = false
}
