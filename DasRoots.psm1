<#
Quick shortcuts for jumping to various commonly used roots
#>
function SourceShortcut($DesiredRoot)
{
   switch($DesiredRoot)
   {
    "go" {cd "C:\Dev\Go"; break;}
    "c#" {cd "C:\Dev\C#"; break;}
    "sql" {cd "C:\Dev\SQL"; break;}
    "java" {cd "C:\Dev\Java"; break;}
    "duino" {cd "C:\Dev\Arduino"; break;}
    "js" {cd "C:\Dev\JS"; break;}

    "temp" {cd "C:\temp"; break;}
    "psm" {cd (Join-Path -Path $env:USERPROFILE -ChildPath "\Documents\WindowsPowerShell\Modules"); break;}


    default {cd "C:\Dev\"; break;}
   }
}
Set-Alias root SourceShortcut;


#Ensures the aliases are set
Export-ModuleMember -Alias * -Function *;