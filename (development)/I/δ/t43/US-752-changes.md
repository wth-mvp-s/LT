 "db": {
    //"dbvirtualeo": "Server=tcp:dbs-virtualeo-dev.database.windows.net,1433;Initial Catalog=VIRTUALEO;Persist Security Info=False;User ID=admvirtualeo;Password={your_password};MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;",
    "dbvirtualeo": "Data Source=myappmemo.database.windows.net,1433; Initial Catalog=for-virtualeo-testing-name4; user ID=myappmemo;Password=Admin123!"
  }
}

public class Program
    {
        public static void Main(string[] args)
        {
            CreateHostBuilder(args).Build().Run();
        }

        public static IHostBuilder CreateHostBuilder(string[] args) =>
            Host.CreateDefaultBuilder(args)
                .ConfigureWebHostDefaults(webBuilder =>
                {
                    webBuilder.ConfigureAppConfiguration((context, config) =>
                    {
                        var root = config.Build();
                        //var vault = root["KeyVault:Vault"];
                        //if (!string.IsNullOrWhiteSpace(vault))
                        //{
                        //    var sc = new SecretClient(new System.Uri($"https://{vault}.vault.azure.net/"), new DefaultAzureCredential());
                        //    //of course, is not a best pratice to use the same keyvault for multiple environment, but more easy to manage in one place
                        //    config.AddAzureKeyVault(sc, new PrefixKeyVaultSecretManager(root["appSettings:runningEnvironment"].ToLowerInvariant()));
                        //}
                    }
                    ).UseStartup<Startup>();
					
					
					
{
  "dependencies": {
    "secrets1": {
      "ignored": "true",
      "type": "secrets.keyVault"
    }
  }
}