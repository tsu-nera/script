#!/bin/sh
# -*- mode: shell-script -*-
#
# tangle files with org-mode
#
DIR=`pwd`
FILES=""

# wrap each argument in the code required to call tangle on it
for i in $@; do
    FILES="$FILES \"$i\""
done

emacs -Q --batch \
    --eval "(progn
     (add-to-list 'load-path (expand-file-name \"~/.emacs.d/el-get/repo/org-mode/lisp/\"))
     (add-to-list 'load-path (expand-file-name \"~/.emacs.d/el-get/repo/org-mode/contrib/\"))
     (add-to-list 'load-path (expand-file-name \"~/.emacs.d/el-get/repo/ox-wk/\"))
     (require 'org)(require 'org-exp)(require 'ox-wk)
     (mapc (lambda (file)
            (find-file (expand-file-name file \"$DIR\"))
            (org-wk-export-to-wiki)
            (kill-buffer)) '($FILES)))" 2>&1
