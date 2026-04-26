# sed
# Insane Text transformations
# Basic syntax
# sed 's/pattern/replacement/flags' file Search and Replace
# sed '/pattern/d' file Delete lines
# sed '/pattern/i<text>' file Insert text before line
# sed '/pattern/a<text>' Append text after line
# cat .env.example | grep {
function fileSearchAndReplace() {
cat .env.example | grep { | sed 's/{{USERNAME}}/mbv/'  # This is used to find and replace
}
function fileDeleteLines() {
cat .env.example | grep { | sed '/{{USERNAME}}/d' # This will delete this line
}
function insertTextBeforeLines() {
# Root cause in short: macOS ships with BSD sed, which is stricter — i\ must be followed by a newline before the text. Linux uses GNU sed, which accepts itext directly on the same line.
# run brew install gnu-sed to make this work on mac
cat .env.example | grep { | gsed '/{{USERNAME}}/iFIRST_NAME={{FIRST_NAME}}' # This will append text to the line
}
function appedTextAfterLines() {
cat .env.example | grep { | gsed '/{{USERNAME}}/aLAST_NAME={{LAST_NAME}}'
}
# insertTextBeforeLines
# appedTextAfterLines

# Useful
# ^$ simple regex for powerful patterns
# g sed flag: global
# i sed flag: case insensitive
# -i command flag to actually change file
# -i<postfix> to change to new file with postfix

 # This changes USERNAME={{USERNAME}} to mbv={{mbv}}
cat .env.example | grep { | sed 's/USERNAME/mbv/g'

# This changes USERNAME={{USERNAME}} to mbv={{USERNAME}}
cat .env.example | grep { | sed 's/USERNAME/mbv/1'

# This changes USERNAME={{USERNAME}} to USERNAME={{mbv}}
cat .env.example | grep { | sed 's/USERNAME/mbv/2'

# This changes USERNAME={{USERNAME}} to mbv={{USERNAME}}, it is case sensitive and only changes the first occurence
cat .env.example | grep { | sed 's/username/mbv/i'

# This changes USERNAME={{USERNAME}} to mbv={{mbv}}, it is case sensitive and changes the first and second occurence because of ig
cat .env.example | grep { | sed 's/username/mbv/ig'

# This changes USERNAME={{USERNAME}} to mbv={{USERNAME}}, it is case sensitive and changes the first occurence because of i1   
cat .env.example | grep { | sed 's/username/mbv/i1'

# This changes USERNAME={{USERNAME}} to USERNAME={{mbv}}, it is case sensitive and changes the second occurence because of i2
cat .env.example | grep { | sed 's/username/mbv/i2'

# -i is a command flag, it will actually change the file
gsed -i 's/username/mbv/ig' .env.example

# Let's change it back to the original value
gsed -i 's/mbv/USERNAME/ig' .env.example

# # What we can also do is add a postfix
gsed -i.bak 's/username/mbv/ig' .env.example

cat .env.example

# Conclusion
# Powerful transformations, but less powerful than awk