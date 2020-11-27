#!/bin/bash
filename=$1
echo "--------Test using" $filename "--------"
./parser $filename > output.txt
./parser_answer $filename > output_answer.txt
diff output.txt output_answer.txt > /dev/null
if [ $? -eq 0 ] ; then
    echo passed
else
    echo NOT passed
fi