#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
NC='\033[0m'

echo -e "${PURPLE}"
echo "DOOZY"
echo "  __  __"
echo " |  \/  |"
echo " | \  / |"
echo " | |\/| |"
echo " | |  | |"
echo " |_|  |_|"
echo -e "${NC}"

# System information
echo -e "${YELLOW}System information:${NC}"
uname -a
cat /etc/issue
cat /etc/*-release
cat /proc/version

echo -e "${BLUE}Installed packages:${NC}"
# Installed packages
dpkg -l
rpm -qa

echo -e "${GREEN}Running processes:${NC}"
# Running processes
ps aux

echo -e "${BLUE}Open ports:${NC}"
# Open ports
netstat -tulnp

echo -e "${YELLOW}Groups:${NC}"
# Groups
groups
id

echo -e "${BLUE}Environment variables:${NC}"
# Environment variables
printenv

echo -e "${RED}Writable directories:${NC}"
# Writable directories
find / -perm -2 -type d 2>/dev/null

echo -e "${GREEN}SUID files:${NC}"
# SUID files
find / -perm -u=s -type f 2>/dev/null

echo -e "${RED}World-writable files:${NC}"
# World-writable files
find / -perm -o w -type f 2>/dev/null

echo -e "${BLUE}Passwd file:${NC}"
# Passwd file
cat /etc/passwd

echo -e "${BLUE
