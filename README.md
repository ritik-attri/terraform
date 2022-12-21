Steps to make it work on local:- 

1) Clone it using "git clone https://github.com/ritik-attri/terraform.git"
2) Open cmd and cd into the directory.
3) In cmd type "terraform init", it will initialize terraform and aws platforms.
4) Create a folder named "private-key" in the current directory.
5) Login int your AWS console > Open IAM > Access keys > Create a key > Name the key terraformkey and download it in pem format and place it in private-key folder.
6) Go to "https://awscli.amazonaws.com/AWSCLIV2.msi" > install it  > verify by typing "aws --version"
7) In cmd type "aws configure" > give access key and secret access key, provide region you prefer and output format as json.
8) In cmd type "terraform validate" > "terraform plan" > "terraform apply --auto-approve".
9) If you get an error, email me at "attri.ritik1@gmail.com" otherwise verify and "terraform destroy --auto-approve".