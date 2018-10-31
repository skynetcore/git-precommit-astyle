#!/bin/bash
#
#
#    filename: install.sh
#    this script installs the style hook to your project
#
#
#
#

hook_file=code-style
hook_dir=.gitstyle-hook
source_dir=`pwd`

#install
cd ..
mkdir $hook_dir
cd ${hook_dir}
cp ${source_dir}/${hook_file} .
cd ..
echo "installing astyle hook"
ln -sn ../../${hook_dir}/${hook_file} .git/hooks/pre-commit
rm -rvf ${source_dir}
