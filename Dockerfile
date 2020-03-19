FROM mcr.microsoft.com/dotnet/core/sdk:3.1-alpine AS build
WORKDIR /app

# copy csproj and restore as distinct layers
COPY ./ContainerWithTest/ContainerWithTest/*.csproj     ./ContainerWithTest/
COPY ./ContainerWithTest/*.sln                          ./

RUN dotnet restore .

# copy everything else and build app
COPY ./ContainerWithTest/ContainerWithTest/     ./ContainerWithTest/
COPY ./ContainerWithTest/                       ./

RUN dotnet build -c Debug