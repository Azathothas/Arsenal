- #### Installing VMware Tools
> 1. Mount the Disk:
> 
> https://github.com/Azathothas/Arsenal/assets/58171889/33506985-7bc6-4463-9640-5ef348356358
>
> 2. Open Terminal
> ```bash
> !# Copy the tar to /tmp
> sudo cp "$(find -type f -name '*.gz')" /tmp/
> !# Extract
> cd /tmp && tar -xvf "$(find -type f -name '*.gz')"
> !# Install
> cd "/tmp/vmware-tools-distrib" && sudo "./vmware-install.pl" --default
> !# Restart the VM
> ```
