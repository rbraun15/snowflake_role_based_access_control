# Snowflake Role Based Access Control - Simple Example

RBAC (Role-Based Access Control) in Snowflake is a method for managing access to resources by assigning roles to users. Each role has specific permissions, and users are granted those roles to access various objects and features in the Snowflake environment.

The file **demo_role_based_access_control.sql** shows an example of how one might use appropriate Snowflake sysetem roles to create new roles and then grant permissions to newly created roles.


&nbsp;<br>


**Included:**
- Object Creation - DB, Schema, Roles for various user types
- Grant appropriate permisions to roles
  - Use on DB and Schema
  - Read Only
  - Read Write
  - Create
  - Ownership
- Grant role to user
- Use newly created role to create table, insert data
- Clean up/reset of environment - Deletes all that was created

Learn more at - [https://docs.snowflake.com/en/user-guide/security-row-intro](https://other-docs.snowflake.com/en/opencatalog/access-control)
