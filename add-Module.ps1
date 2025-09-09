function add-Module {
<#
.COMPONENT
    PowerShell Version 5
.PARAMETER Module
    Name of the module to add. If not specified, it will prompt for input.
.DESCRIPTION
    This PowerShell function adds a specified module from the PowerShell Gallery to a local directory.
.NOTES
    Script written by: Brian Stark
    Date: 02/06/2025
    Modified by:
    Date:
    Version: 1.0
.EXAMPLE
    add-Module -Module "AzureAD"
    This command will add the AzureAD module to the local directory C:\PS\PSModules.
.INPUTS
    The function accepts a string parameter for the module name.
.OUTPUTS
    The function does not return any output but saves the specified module to the local directory.
.LINK
    Scripts can be found at: https://github.com/BStarkIT
#>
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false)]
        [string] $Module
    )
    Save-Module -Name $Module -Path C:\PS\PSModules -Repository PSGallery
}