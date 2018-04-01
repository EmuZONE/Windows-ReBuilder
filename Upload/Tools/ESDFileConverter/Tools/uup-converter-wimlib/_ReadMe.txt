===============================================================================
# Info #

- An automated script to process Microsoft's Unified Update Platform files,
and to build/convert it into a usable state (ISO / WIM)

- Administrator privileges are required to run the script

===============================================================================
# Attention #

- If the upgrade is down via Express UUP (where files are expanded into multiple folders in the download directory)
you need to perform the UUP > ISO operation before starting the upgrade process (before first restart)
to do so, when WU prompt you to restart, start convert-UUP.cmd and paste the path to download directory, example:
C:\Windows\SoftwareDistribution\Download\07172dda91861218ecc095600216d792

alternatively, if you are testing in VM machine or have multi boot systems,
you can choose to Shut down/Restart the system without upgrading
on Desktop, press Alt+F4
https://i.imgbox.com/vxZLhGPM.png

===============================================================================
# How To Use #

- Temporary disable AV or protection program so it doesn't interfere with the process.

- Make sure the files are not read-only or blocked.

- Extract this pack to a folder with simple path to avoid troubles (example: C:\UUP).

- Place the files in "UUPs" folder to be detected automatically
alternatively, you will be prompted to enter other UUP folder path

- Run the script as administrator

- If one Edition is detected, you will have these options:

1 - Create Full ISO with Standard install.wim
convert UUP files to a regular ISO distribution that contains standard install.wim file

2 - Create Standard install.wim
create a single install.wim file, which can be used with other ISO for the same product version
or for manual apply using dism/wimlib

3 - UUP Edition info

- If multiple Editions detected, you will be prompted first to select one of them, or create AIO
then you will be presented with above options

- Note:
to exit of the prompt or options menu just press "Enter"

===============================================================================
# Bonus #

- If you plan to use you local UUP source repeatedly, you can choose to keep converted reference ESD files
for future operations instead converting them each time.

to do so, edit the script and change "SET RefESD=0" to "SET RefESD=1"
and after the first conversion, the Reference ESDs will be placed next to original ESDs
then, you can remove CAB files of the source, or the expanded folders (if the source is Express UUP).

- if UUP source is Express, Reference ESDs and Edition(s) ESD will be copied to new folder CanonicalUUP
practically, this convert/backup Express UUP source to Canonical

- if UUP source is Canonical, Reference ESDs will be copied to the UUP source
 
===============================================================================
# Credits #

Eric Biggers
wimlib

@rgadguard
initial script

Thanks to: @Enthousiast, @Ratiborus58, @NecrosoftCore, @DiamondMonday, @WzorNET

===============================================================================