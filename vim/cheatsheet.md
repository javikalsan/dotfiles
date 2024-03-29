# vim cheatsheet

## default
    `:svp file` Open a file in a vertical splitted pane
    `CTRL + W` Switch between open panes
    `CTRL + w + L` Flip vsplit pane
    `m6` Move current line to line 6
    `SHIFT + j` Move the bottom line to the end of the current one
    `gt` Go to the next tab
    `2gt` Go to the second tab
    `*` Search for the word under the cursor
    `:Colors` Show and select vim available colorschemes
    `=` when VISUAL selection autoident
    `CTRL + O` and `CTRL + I` or The jumplist or Friggin Vim Time Machine.
    `%` go to close/open symbol {} [] ...
    `ESC > 1 > CTRL + G` display the absolute path of the current buffer
    `gd` search all ocurrences in buffer for current cursor position
    `U` uppercase `u` lowercase in VISUAL mode
    `SHIFT + V` select current line
    `:tabmove` move current tab to number position, without arg goes to the trailing position
    `:reg` show clipboard registers
    `"{Number of register}p` Paste the {number of register} clipboard register
    `t+{character} move, to right, to the position before {character}
    `f+{character} move, to right, to the position of {character}
    `cs"'` Change surrounding quotes, double by single

## custom
    `leader + f` NerdTreeFind, open NerdTree at the current buffer tree level

## jedi
    `leader + d`: go to a method definition

## fzf
### search
    `;` search files from current folder
    `CTRL + t` open the current selected file in a tab
    `CTRL + v` open the current selected file vertical splitted

## NERDTree
    m.......Open NerdTreeMenu, in a NERDTree active pane
    o.......Open files, directories and bookmarks....................|NERDTree-o|
    go......Open selected file, but leave cursor in the NERDTree.....|NERDTree-go|
    t.......Open selected node/bookmark in a new tab.................|NERDTree-t|
    T.......Same as 't' but keep the focus on the current tab........|NERDTree-T|
    i.......Open selected file in a split window.....................|NERDTree-i|
    gi......Same as i, but leave the cursor on the NERDTree..........|NERDTree-gi|
    s.......Open selected file in a new vsplit.......................|NERDTree-s|
    gs......Same as s, but leave the cursor on the NERDTree..........|NERDTree-gs|
    O.......Recursively open the selected directory..................|NERDTree-O|
    x.......Close the current nodes parent...........................|NERDTree-x|
    X.......Recursively close all children of the current node.......|NERDTree-X|
    e.......Edit the current dif.....................................|NERDTree-e|

    <CR>...............same as |NERDTree-o|.
    double-click.......same as the |NERDTree-o| map.
    middle-click.......same as |NERDTree-i| for files, same as
                      |NERDTree-e| for dirs.

    D.......Delete the current bookmark .............................|NERDTree-D|

    P.......Jump to the root node....................................|NERDTree-P|
    p.......Jump to current nodes parent.............................|NERDTree-p|
    K.......Jump up inside directories at the current tree depth.....|NERDTree-K|
    J.......Jump down inside directories at the current tree depth...|NERDTree-J|
    <C-J>...Jump down to the next sibling of the current directory...|NERDTree-C-J|
    <C-K>...Jump up to the previous sibling of the current directory.|NERDTree-C-K|

    C.......Change the tree root to the selected dir.................|NERDTree-C|
    u.......Move the tree root up one directory......................|NERDTree-u|
    U.......Same as 'u' except the old root node is left open........|NERDTree-U|
    r.......Recursively refresh the current directory................|NERDTree-r|
    R.......Recursively refresh the current root.....................|NERDTree-R|
    m.......Display the NERD tree menu...............................|NERDTree-m|
    cd......Change the CWD to the dir of the selected node...........|NERDTree-cd|

    I.......Toggle whether hidden files displayed....................|NERDTree-I|
    f.......Toggle whether the file filters are used.................|NERDTree-f|
    F.......Toggle whether files are displayed.......................|NERDTree-F|
    B.......Toggle whether the bookmark table is displayed...........|NERDTree-B|

    q.......Close the NERDTree window................................|NERDTree-q|
    A.......Zoom (maximize/minimize) the NERDTree window.............|NERDTree-A|
    ?.......Toggle the display of the quick help.....................|NERDTree-?|
