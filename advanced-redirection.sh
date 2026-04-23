# Advanced Redirections
# Fancy Pipes
# File Descriptors (outputs)
# 0 stdin
# 1 stdout
# 2 stderr
# File Descriptors are files that your system have already opened

# How to mute commands
# 2> /dev/null for errors
# &> /dev/null to mute everything
ls nonexistent.sh 2> /dev/null
ls &> /dev/null
cat input.sh > /dev/null 2>&1 # for old bash versions
ls | grep sh
cat cat.sh > tmp # To write content into a file
ls | grep tmp
cat cat.sh >> tmp # To append content into a file