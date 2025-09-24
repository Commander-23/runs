#!/bin/bash

sudo mkdir -p /mnt/hbox/
mount.cifs -o user=cmdr //192.168.1.111/cmdr /mnt/hbox/
