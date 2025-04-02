#!/bin/bash

if (($EUID != 0)); then
  echo "Please run as root"
  exit
fi

clear

mirro-rs --outfile /etc/pacman.d/mirrorlist --export 30 --rate -c Belgium -c France -c Germany -c Netherlands --protocols https
