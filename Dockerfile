# Stage 1: Build the application
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src

# Copy .csproj and restore dependencies
COPY DockerDemo.csproj ./
RUN dotnet restore

# Copy everything else and build
COPY . ./
RUN dotnet publish -c Release -o /app/publish

# Stage 2: Create the runtime image
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base
WORKDIR /app

# Copy build artifacts from the build stage
COPY --from=build /app/publish ./

# Expose port 80 (default for ASP.NET)
EXPOSE 80

# Run the app
ENTRYPOINT ["dotnet", "DockerDemo.dll"]
