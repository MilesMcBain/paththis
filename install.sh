#! /bin/bash
echo "copying paththis to ~/bin/paththis"
CLONE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
mkdir -p ~/bin
cp $CLONE_DIR/paththis ~/bin/
if [[ :$PATH: != *:"~/bin":* ]] ; then
   echo "adding ~/bin to PATH."
   echo "PATH=\"\$PATH:~/bin\"" >> ~/.profile
fi

