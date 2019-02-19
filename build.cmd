@echo off
cls

dotnet restore ExcelFinancialFunctions.sln

IF NOT EXIST build.fsx (
  fake run init.fsx
)
fake build %*