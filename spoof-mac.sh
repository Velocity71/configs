#!/bin/zsh

# Literals are default values customized for my computer for quick spoofing
dev="enp4s0" # target network device
cur=$(\cat /sys/class/net/$dev/address) # current mac address
rep="a6:a1:59:e3:fc:49" # replacement MAC address
echo $cur
# Obtain optional parameters
while getopts "d:r:" opt; do
    case $opt in
        d) dev="$OPTARG" ;;
        r) repl="$OPTARG" ;;
        *) echo "Usage: $0 [-d device] [-r replacement address]" ;;
    esac
done

echo "Spoofing the MAC address of device $dev to $rep (currently $cur)."

echo "Downing $dev..."
sudo ip link set dev $dev down

echo "Setting address..."
sudo ip link set dev $dev address $rep

echo "Upping $dev..."
sudo ip link set dev $dev up

echo "Spoofing complete."
