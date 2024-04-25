# **Project IAM**

This module is used to assign project roles

For further details kindly refer to [Access control for projects using IAM](https://cloud.google.com/resource-manager/docs/access-control-proj)


## **Usage**

```
module "set-iam-roles" {
  source     = "../project-iam"
  project_id = var.project_id
  roles_and_members = [
    {
      role = "roles/compute.viewer"
      members = [
        "serviceAccount:sac-plt-terraform@prokopto-plt-eng.iam.gserviceaccount.com",
        "serviceAccount:sac-test@prokopto-plt-eng.iam.gserviceaccount.com",
      ]
    },
    {
      role = "roles/browser"
      members = [
        "serviceAccount:sac-plt-terraform@prokopto-plt-eng.iam.gserviceaccount.com",
        "serviceAccount:sac-test@prokopto-plt-eng.iam.gserviceaccount.com",
      ]
    },
  ]
}
```

## **Inputs**

| **Name** | **Description** | **Type** | **Required** | **Default** |
|----------|-----------------|----------|:------------:|:-----------:|
| project_id | Project ID where the IAM policy belongs | `string` | yes | n/a|
| roles_and_members | The list of roles and members being created | `list(object({ role = string, members = list(string) }))` | yes | n/a|


## **Ouputs**

| Name | Description |
|------|-------------|
|  |  |