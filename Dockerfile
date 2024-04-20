FROM mcr.microsoft.com/dotnet/sdk:7.0

WORKDIR /app

COPY . .

#RUN dotnet add IQTech package Microsoft.AspNetCore.Diagnostics.EntityFrameworkCore
#RUN dotnet add IQTech package Microsoft.AspNetCore.Identity.EntityFrameworkCore
#RUN dotnet add IQTech package Microsoft.AspNetCore.Identity.UI
#RUN dotnet add IQTech package Microsoft.EntityFrameworkCore.Sqlite
#RUN dotnet add IQTech package Microsoft.EntityFrameworkCore.SqlServer 
#RUN dotnet add IQTech package Microsoft.EntityFrameworkCore.Tools
#RUN dotnet add IQTech package Microsoft.VisualStudio.Web.CodeGeneration.Design 

WORKDIR /app/IQTech

RUN dotnet restore

WORKDIR /app

COPY . .

WORKDIR /app/IQTech

EXPOSE 5237

CMD ["dotnet", "run"]