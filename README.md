# aws-iam-role-cli

## Samples

### Cloudformation PowerUser Role

```sh
aws iam create-role --role-name cfn-power-user --assume-role-policy-document '{"Version": "2012-10-17","Statement": [{"Effect": "Allow","Principal": {"Service": "cloudformation.amazonaws.com"},"Action": "sts:AssumeRole"}]}'
aws iam attach-role-policy --role-name cfn-power-user --policy-arn arn:aws:iam::aws:policy/PowerUserAccess
```

### Create OrganizationAccountAccessRole

```sh
ACCOUNT_ID=<ACCOUNTID>
aws iam create-role --role-name OrganizationAccountAccessRole --assume-role-policy-document "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::$ACCOUNT_ID:root\"},\"Action\":\"sts:AssumeRole\"}]}"
aws iam attach-role-policy --policy-arn arn:aws:iam::aws:policy/AdministratorAccess --role-name OrganizationAccountAccessRole
```
