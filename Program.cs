var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

// Explicitly bind to 0.0.0.0:8080
app.Urls.Add("http://0.0.0.0:80");

app.MapGet("/api/hello", () => "Hello, World!");

app.Run();
