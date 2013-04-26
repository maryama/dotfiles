" Set 'formatoptions' to break comment lines but not other lines, and insert
" the comment leader when hitting <CR> or using "o".
setlocal formatoptions-=t formatoptions+=croql

" Match_words used for html
let b:match_words = '<:>,<\@<=[ou]l\>[^>]*\%(>\|$\):<\@<=li\>:<\@<=/[ou]l>,<\@<=dl\>[^>]*\%(>\|$\):<\@<=d[td]\>:<\@<=/dl>,<\@<=\([^/][^ \t>]*\)[^>]*\%(>\|$\):<\@<=/\1>'

" Adds curly brace matching and matching for tags with the same name.
"
" This does not match tags like if to else, for example. This could be done,
" but it would increase the complexity of the regex, and isn't very useful in
" practice.
let b:match_words .= ',{:},{\@<=\(\w\+\)[^}]*}:{\@<=/\1}'
