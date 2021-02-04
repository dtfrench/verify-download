# verify-download
A PowerShell script to verify the hash of a downloaded program. 

It is important to verify the integrity of programs and other files that you download from the internet before you use them. This is to ensure that the program is authentic and has not been maliciously altered or corrupted during the download. Software distributors often provide checksums that you can use to verify the integrity of the program they provide. You can generate the checksum on your own system and see if matches the provided checksum. This script will help you easily do that.

When you run verify-download you will get this prompt:
```
Enter the full filepath to the program you want to check:
```
Copy and paste or type in the full filepath of your downloaded program without using quotes. It should look something like this:
```
C:\Users\Your_User\Downloads\your_downloaded_file.iso
```
Hit enter. Next you will get this prompt:
```
Enter the type of hash you are checking (SHA1/SHA256/SHA384/SHA512/MD5):
```
Enter the appropriate hash algorithm for the checksum you are using. Hit enter and the program will calculate the hash and display it to you. Next it will prompt you for the checksum that you are using to verify the the integrity of the program:

```
Enter the hash that you want the program hash to be compared against:
```

Copy and paste or type in the checksum. Hit enter. If the hashes match then you will get
```
The hashes match!
```
Otherwise you will get
```
The hashes are not matching. Check again. Don't install.
```


