#!/bin/bash

# Show swap size
#
# metadata
# <bitbar.title>Swap size</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>Alexander Vykhodtsev</bitbar.author>
# <bitbar.author.github>alex-vv</bitbar.author.github>
# <bitbar.desc>Display swap size</bitbar.desc>

output=$(sysctl vm.swapusage)
array=($output)
vm=${array[6]%M}
size=$(echo "scale=1; $vm/1024" | bc)
echo "${size}G | size=9 font=Tahoma"