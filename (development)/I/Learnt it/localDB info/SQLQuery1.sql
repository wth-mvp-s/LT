USE master;
GO
ALTER SERVER ROLE sysadmin ADD MEMBER [DESKTOP-I25S37T\lt];
GO
	


	USE master;
GO
SELECT p.name AS [Principal Name], r.name AS [Role Name]
FROM sys.server_role_members srm
INNER JOIN sys.server_principals p ON srm.member_principal_id = p.principal_id
INNER JOIN sys.server_principals r ON srm.role_principal_id = r.principal_id
WHERE r.type_desc = 'SERVER_ROLE';


SELECT @@VERSION;