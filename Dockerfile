FROM mcr.microsoft.com/dotnet/sdk:7.0

WORKDIR /app

COPY . .

WORKDIR /app/IQTech

RUN dotnet restore

WORKDIR /app

COPY . .

WORKDIR /app/IQTech

EXPOSE 5237

CMD ["dotnet", "run"]
