#set-executionpolicy -executionpolicy remotesigned -scope currentuser
#get-executionpolicy -list

dotnet run
if ($LastExitCode -eq 0) {
    Write-Host "This application has succeeded!"
} else
{
    Write-Host "This application has failed!"
}
Write-Host "All Done."