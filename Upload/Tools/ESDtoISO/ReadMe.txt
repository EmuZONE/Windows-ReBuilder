===============================================================================
# Info #

An automated script to handle microsoft's original ESD file (encrypted or decrypted),
for converting it into a usable state (ISO / WIM / decrypted ESD).

===============================================================================
# Attention #

- The script is set to not backup encrypted ESD before decrypting it, which will change the file hash
therefore, if you want to maintain the original ESD file state,
make sure to turn the backup ON by pressing 9 before proceeding to other operations.

- Administrator privileges are required to run the script

===============================================================================
# How To Use #

- Temporary disable AV or protection program so it doesn't interfere with the process.

- Make sure the ESD file is not read-only or blocked.

- Extract this pack to a folder with simple path to avoid troubles (example: C:\ESD).

- You may start the process using any of these ways:
# Copy/Move ESD file to the same folder besides the script, then open the script

# Drag & drop ESD file on decrypt.cmd

# Directly open decrypt.cmd and you will be prompted to enter the ESD file path

# Open Command Prompt in the current directory, and Execute: decrypt ESDFileNameAndPath
this allow using ESD from any location, examples:
decrypt 9926.0.150119-1648.fbl_awesome1501_clientpro_ret_x86fre_en-us.esd
decrypt C:\RecoveryImage\install.esd
decrypt C:\Data\Programs\ISO\ESD\ir4_cpra_x64frer_en-us.esd

- If all goes well, you will have these options:
1 - Create Full ISO with Standard install.wim
this will convert ESD to a regular ISO distribution that contains standard install.wim file

2 - Create Full ISO with Compressed install.esd
similar to the first, but it will have highly compressed install.esd file

3 - Create Standard install.wim
this will create a single install.wim file, which can be used with other ISO for the same product version
or to use it for manual apply using dism/wimlib

4 - Create Compressed install.esd
similar to the third, but it will create install.esd file, which can be used just like install.wim

5 - Decrypt ESD file only (if the file is encrypted)

5 - ESD file info (if the file is already decrypted)

===============================================================================
# Multi-Architecture ISO (x86/x64) #

It is now possible to create an ISO for both architectures together, similar to Media Creation Tool

How to:
- get 2 ESDs with different architectures, same language, same version (i.e. both en-us build 10586)
- place the ESD files next to the script
- execute the script directly, and choose an option that suites you

Options:
1- ISO with 2 solid install.esd                 (same as MediaCreationTool)
this will create two separate install.esd for each architecture

2- ISO with 2 serviceable install.wim           (similar to 1, bigger size)
this will create two separate install.wim for each architecture

3- ISO with 1 shared serviceable install.wim         (smaller overall size)
this will combine both architectures images into one install.wim, which will be duplicated in each architecture directory,
then, it uses ISO optimization feature to reduce the overall size by storing it once (shared file)

===============================================================================
# Credits #

qad - decryption program
Eric Biggers - wimlib
murphy78 - original script
Chris123NT, MrMagic, mohitbajaj143, Superwzt - RSA cryptokey
nosferati87, NiFu, s1ave77, ztsoft, and any other MDL forums members contributed in the ESD project
