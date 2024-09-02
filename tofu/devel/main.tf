terraform {
  backend "s3" {
    # backend は variable評価前に実行されるので TF_VAR_ 環境変数を参照することになる
    region         = var.state_region
    bucket         = "${var.service}-state"
    dynamodb_table = "${var.service}-state-${var.env}"
    key            = "terraform/${var.env}/terraform.tfstate"
  }
}

provider "aws" {
  region = local.region # AWS リージョン
}


# VPC ネットワーク関連の定義
module "vpc" {
  source = "../modules/vpc"
  symbol = local.symbol
  region = local.region
  #
}


