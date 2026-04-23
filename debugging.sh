#!/bin/bash 
# Debugging beyond Echo statements
# Anything else but echo
# Why debug
# Scripts fail silently by default
# There are better ways of spinkling echo everywhere
# A way to properly debug is by using x-traces

# x-traces
# X-traces print each command after expansion, before execution
# #!/bin/bash
# set -x to enable
# set +x to disable
set -x
echo $SHELL
set +x

# Verbose mode
# shows each line before expansion
# -v
# set -v and set +v
set -v
echo $SHELL
set +v