<# This program is designed to simplify the process of verifying the hash of a downloaded program.#>

#Takes the filepath of the program from user input and stores it.
$program_to_check = Read-Host -Prompt "Enter the full filepath to the program you want to check"

#Selects the hash function to be used 
$preferred_hash = Read-Host -Prompt "Enter the type of hash you are checking (SHA1/SHA256/SHA384/SHA512/MD5)"

<#Lets user know program is running, hashes the program, stores the information in an object,
and informs the user what the calculated hash is. #>
Write-Host("`nHashing...Sip some coffee...`n")
$program_hash = Get-FileHash -Path $program_to_check -Algorithm $preferred_hash
Write-Host("Your program hash is:", $program_hash.Hash)

#Takes the hash from user input that the calculated hash from the program is going to be checked against. 
$hash_to_check_against = Read-Host -Prompt "`nEnter the hash that you want the program hash to be compared against"

#The hashes are compared, the user is informed if they match, and the hashes are printed out. 
if ($program_hash.Hash -eq $hash_to_check_against) {

    Write-Host("`nThe hashes match!`n")
    Write-Host($program_hash.Hash)
    Write-Host($hash_to_check_against)

    } else {

        Write-Host("`nThe hashes are not matching. Check again. Don't install.`n")
        Write-Host($program_hash.Hash)
        Write-Host($hash_to_check_against)
       }

 
