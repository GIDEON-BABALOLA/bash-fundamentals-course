# #!/bin/bash
# awk basics
# Insane Text Manipulation
# Why would you use awk instead of sed, why learn both these tools
# Great for tabular data like ls -l
# More powerful, almost like a full programming language
# Basic syntax
# `awk 'pattern { action }' file
# awk '{print $1}' file

# See it in action
awk '{print $1}' users.csv # Be careful here, you mean see a weird result, awk interprets column separation by whitespace, tabs, and newlines in csv files
ls -l | awk '{print $1}'
ls  | awk '{print $1}'
ls -l | awk '{print $9}' # The last one nine is the last name
ls -la | awk '{print $9}' # The last one nine is the last name
# Also ls -la shows all hidden files

# Conditionals and built-in variables



ls -la | awk '$NF == ".config" {print "config present"}' #NF here means name of file
# NR Line number, $0 All columns
awk 'NR>1 {print $0}' users.csv # This ignores the first line in users.csv and starts printing from the second line

# CSVs or separators
# -F<sep> command flag
awk -F, 'NR>1 { print $1 }' users.csv # Now awk understands that csv columns are separated by commas

# Complex multiline scripts, Explanation of this code: For every line after the first one of our users.csv, I want to add a object that is filled with the sixth column which is the rows so, I want to count each rows so I do ++, then I have a object filled with the number of oeccurences of each row, and then at the end using the END keyword of the file, I simply want to loop over this object and for each row in the counter object, I want to print the row and the count of the row, so print role will be the key and count[role] will be the value
awk -F, 'NR>1 { count[$6]++ }
END {
   for (role in count) {
      print role, count[role]
   }
}'  users.csv 

# In Conclusion
sed and awk are great tools to learn the basics of.
Very useful to do more with your fules in your scripts