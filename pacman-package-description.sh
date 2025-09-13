#!/bin/sh

pacman -Qe | awk '{print $1}' | while read pkg; do echo -n "$pkg "; pacman -Qi "$pkg" | grep -i 'Description' | cut -d: -f2; done > packages.txt
