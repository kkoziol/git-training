#!/bin/bash
git clone https://github.com/kkoziol/lorem_ipsum.git
mv ./lorem_ipsum/lorem_ipsum.sh .
rm -fr lorem_ipsum

echo "#!/bin/bash"                                  > init.sh
echo "if [ $# -eq 1 ] ; then"                       >>init.sh
echo "    mkdir $1"                                 >>init.sh
echo "    cd $1"                                    >>init.sh
echo "    ../lorem_ipsum.sh -p 1 > lorem-ipsum.txt" >>init.sh
echo "    git init"                                 >>init.sh
echo "    git add lorem-ipsum.txt"                  >>init.sh
echo "    git commit -m \"pierwszy komit\""         >>init.sh
echo "else"                                         >>init.sh
echo "    echo 'Usage: init directory_name'"        >>init.sh
echo "fi"                                           >>init.sh
