#!/bin/bash

grep -o -E '[01]*' ./bruxarias.txt > 1a.txt

grep -o -E '1[01]{0,7}' ./bruxarias.txt > 1b.txt

grep -o '^[01]{0,7}\$' ./bruxarias.txt > 1c.txt

grep -o -E -w '[0-9]([0]{1}|[1-9]{1,})*' ./bruxarias.txt > 1d.txt

grep -o  '[ue]tt' ./bruxarias.txt > 1e.txt

grep -o -E '[A-Za-z][a-z]{2,}' ./bruxarias.txt > 1f.txt

grep -o '[A-Z][0-9_]*' ./bruxarias.txt > 1g.txt

grep -o -E '((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)' ./bruxarias.txt > 1h.txt 
 
find /etc -type d >2a.txt

find /etc -type d -maxdepth 1 > 2b.txt

find /etc -type f -size +1k > 2c.txt

find /home/$(whoami) -type f atime +10 > 2d.txt

awk -F: '{print $1}' /etc/passwd > 3a.txt

awk -F: 'NR>=10 && NR<=20 {print $1}' /etc/passwd > 3b.txt
 
sed -i -w '/^your_username:/d' /etc/passwd
