#!/bin/bash
git clone https://github.com/kkoziol/lorem_ipsum.git
mv ./lorem_ipsum/lorem_ipsum.sh .
rm -fr lorem_ipsum

echo "#!/bin/bash"                                  > init.sh
echo "if [ \$# -eq 1 ] ; then"                     >>init.sh
echo "    mkdir \$1"                                >>init.sh
echo "    cd \$1"                                   >>init.sh
echo "    ../lorem_ipsum.sh -p 1 > lorem-ipsum.txt" >>init.sh
echo "    git init"                                 >>init.sh
echo "    git add lorem-ipsum.txt"                  >>init.sh
echo "    git commit -m \"pierwszy komit\""         >>init.sh
echo "else"                                         >>init.sh
echo "    echo 'Usage: init directory_name'"        >>init.sh
echo "fi"                                           >>init.sh

echo "#!/bin/bash"                                       > addcommits.sh
echo "if [ \$# -eq 2 ] ; then"                           >>addcommits.sh
echo "    file=\$2"                                      >>addcommits.sh
echo "    for (( i=1; i<=\$1; i++ ))"                    >>addcommits.sh
echo "    do"                                            >>addcommits.sh
echo "        echo \"Hello world number:\$i\" >> \$file" >>addcommits.sh
echo "    done"                                          >>addcommits.sh
echo "else"                                              >>addcommits.sh
echo "    echo 'Usage: addcommits 3 file_name'"          >>addcommits.sh
echo "fi"                                                >>addcommits.sh

echo "#!/bin/bash"                                          > addfiles.sh
echo "if [ \$# -eq 2 ] ; then"                              >>addfiles.sh
echo "    file=\$2"                                         >>addfiles.sh
echo "    for (( i=1; i<=\$1; i++ ))"                       >>addfiles.sh
echo "    do"                                               >>addfiles.sh
echo "        echo \"Hello world number:\$i\" >> \$file\$i" >>addfiles.sh
echo "    done"                                             >>addfiles.sh
echo "else"                                                 >>addfiles.sh
echo "    echo 'Usage: addfiles 3 file_name'"               >>addfiles.sh
echo "fi"                                                   >>addfiles.sh
