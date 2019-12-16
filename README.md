# aws-iam-role-cli

## Samples

### Cloudformation PowerUser Role
```
aws iam create-role --role-name cfn-power-user --assume-role-policy-document file://cfn-assume-role-policy.json
aws iam attach-role-policy --role-name cfn-power-user --policy-arn arn:aws:iam::aws:policy/PowerUserAccess
```