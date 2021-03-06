" Vim syntax file
" Language:     Ruby
" Maintainer:   Mirko Nasato
" Last Change:  2001 May 10
" Location:     http://altern.org/mn/ruby/ruby.vim

" See http://altern.org/mn/ruby/vim.html for documentation.
" Thanks to perl.vim authors, and to Reimer Behrends. :-)

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Expression Substitution: and Backslash Notation
syn match   rubyExprSubst  "\\\\\|\(\(\\M-\\C-\|\\c\|\\C-\|\\M-\)\w\)\|\(\\\o\{3}\|\\x\x\{2}\|\\[tnrfbaes]\)" contained
syn match   rubyExprSubst  "#{[^}]*}" contained
syn match   rubyExprSubst  "#[$@]\w\+" contained

" Numbers: and ASCII Codes
syn match   rubyNumber  "\<\(0x\x\+\|0b[01]\+\|0\o\+\|0\.\d\+\|0\|[1-9][\.0-9_]*\)\>"
syn match   rubyNumber  "?\(\\M-\\C-\|\\c\|\\C-\|\\M-\)\=\(\\\o\{3}\|\\x\x\{2}\|\\\=\w\)"

" Special Identifiers: instance, global, symbol, iterator, predefined
if !exists("ruby_no_identifiers")
  syn match   rubyIdentifier  "\<\u\w*"
  syn match   rubyIdentifier  "@\h\w*"
  syn match   rubyIdentifier  "$\h\w*"
  syn match   rubyIdentifier  "\s:\h\w*"
  syn match   rubyIdentifier  "|[ ,a-zA-Z0-9_*]\+|"
  syn match   rubyIdentifier  "$[\\\"/:'&`+*.,;=~!?@$<>0-9]"
  syn match   rubyIdentifier  "$-[0adFiIlpv]"
endif

"
" BEGIN Autogenerated Stuff (Ruby script @ http://altern.org/mn/ruby/vimregions.rb)
"
" Generalized Regular Expression:
syn region rubyString matchgroup=rubyStringDelimit start="%r!" end="![iopx]*" skip="\\\\\|\\!" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%r\"" end="\"[iopx]*" skip="\\\\\|\\\"" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%r#" end="#[iopx]*" skip="\\\\\|\\#" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%r\$" end="\$[iopx]*" skip="\\\\\|\\\$" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%r%" end="%[iopx]*" skip="\\\\\|\\%" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%r&" end="&[iopx]*" skip="\\\\\|\\&" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%r'" end="'[iopx]*" skip="\\\\\|\\'" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%r\*" end="\*[iopx]*" skip="\\\\\|\\\*" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%r+" end="+[iopx]*" skip="\\\\\|\\+" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%r-" end="-[iopx]*" skip="\\\\\|\\-" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%r\." end="\.[iopx]*" skip="\\\\\|\\\." contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%r/" end="/[iopx]*" skip="\\\\\|\\/" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%r:" end=":[iopx]*" skip="\\\\\|\\:" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%r;" end=";[iopx]*" skip="\\\\\|\\;" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%r=" end="=[iopx]*" skip="\\\\\|\\=" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%r?" end="?[iopx]*" skip="\\\\\|\\?" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%r@" end="@[iopx]*" skip="\\\\\|\\@" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%r\\" end="\\[iopx]*"  contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%r\^" end="\^[iopx]*" skip="\\\\\|\\\^" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%r`" end="`[iopx]*" skip="\\\\\|\\`" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%r|" end="|[iopx]*" skip="\\\\\|\\|" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%r\~" end="\~[iopx]*" skip="\\\\\|\\\~" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%r{" end="}[iopx]*" skip="\\\\\|\\}" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%r<" end=">[iopx]*" skip="\\\\\|\\>" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%r\[" end="\][iopx]*" skip="\\\\\|\\\]" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%r(" end=")[iopx]*" skip="\\\\\|\\)" contains=rubyExprSubst

" Generalized Single Quoted String and Array of Strings:
syn region rubyString matchgroup=rubyStringDelimit start="%[wq]!" end="!" skip="\\\\\|\\!"
syn region rubyString matchgroup=rubyStringDelimit start="%[wq]\"" end="\"" skip="\\\\\|\\\""
syn region rubyString matchgroup=rubyStringDelimit start="%[wq]#" end="#" skip="\\\\\|\\#"
syn region rubyString matchgroup=rubyStringDelimit start="%[wq]\$" end="\$" skip="\\\\\|\\\$"
syn region rubyString matchgroup=rubyStringDelimit start="%[wq]%" end="%" skip="\\\\\|\\%"
syn region rubyString matchgroup=rubyStringDelimit start="%[wq]&" end="&" skip="\\\\\|\\&"
syn region rubyString matchgroup=rubyStringDelimit start="%[wq]'" end="'" skip="\\\\\|\\'"
syn region rubyString matchgroup=rubyStringDelimit start="%[wq]\*" end="\*" skip="\\\\\|\\\*"
syn region rubyString matchgroup=rubyStringDelimit start="%[wq]+" end="+" skip="\\\\\|\\+"
syn region rubyString matchgroup=rubyStringDelimit start="%[wq]-" end="-" skip="\\\\\|\\-"
syn region rubyString matchgroup=rubyStringDelimit start="%[wq]\." end="\." skip="\\\\\|\\\."
syn region rubyString matchgroup=rubyStringDelimit start="%[wq]/" end="/" skip="\\\\\|\\/"
syn region rubyString matchgroup=rubyStringDelimit start="%[wq];" end=";" skip="\\\\\|\\;"
syn region rubyString matchgroup=rubyStringDelimit start="%[wq]=" end="=" skip="\\\\\|\\="
syn region rubyString matchgroup=rubyStringDelimit start="%[wq]?" end="?" skip="\\\\\|\\?"
syn region rubyString matchgroup=rubyStringDelimit start="%[wq]@" end="@" skip="\\\\\|\\@"
syn region rubyString matchgroup=rubyStringDelimit start="%[wq]\\" end="\\"
syn region rubyString matchgroup=rubyStringDelimit start="%[wq]\^" end="\^" skip="\\\\\|\\\^"
syn region rubyString matchgroup=rubyStringDelimit start="%[wq]`" end="`" skip="\\\\\|\\`"
syn region rubyString matchgroup=rubyStringDelimit start="%[wq]|" end="|" skip="\\\\\|\\|"
syn region rubyString matchgroup=rubyStringDelimit start="%[wq]\~" end="\~" skip="\\\\\|\\\~"
syn region rubyString matchgroup=rubyStringDelimit start="%[wq]{" end="}" skip="\\\\\|\\}"
syn region rubyString matchgroup=rubyStringDelimit start="%[wq]<" end=">" skip="\\\\\|\\>"
syn region rubyString matchgroup=rubyStringDelimit start="%[wq]\[" end="\]" skip="\\\\\|\\\]"
syn region rubyString matchgroup=rubyStringDelimit start="%[wq](" end=")" skip="\\\\\|\\)"

" Generalized Double Quoted String and Shell Command Output:
syn region rubyString matchgroup=rubyStringDelimit start="%[Qx]\=!" end="!" skip="\\\\\|\\!" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%[Qx]\=\"" end="\"" skip="\\\\\|\\\"" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%[Qx]\=#" end="#" skip="\\\\\|\\#" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%[Qx]\=\$" end="\$" skip="\\\\\|\\\$" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%[Qx]\=%" end="%" skip="\\\\\|\\%" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%[Qx]\=&" end="&" skip="\\\\\|\\&" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%[Qx]\='" end="'" skip="\\\\\|\\'" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%[Qx]\=\*" end="\*" skip="\\\\\|\\\*" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%[Qx]\=+" end="+" skip="\\\\\|\\+" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%[Qx]\=-" end="-" skip="\\\\\|\\-" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%[Qx]\=\." end="\." skip="\\\\\|\\\." contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%[Qx]\=/" end="/" skip="\\\\\|\\/" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%[Qx]\=:" end=":" skip="\\\\\|\\:" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%[Qx]\=;" end=";" skip="\\\\\|\\;" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%[Qx]\==" end="=" skip="\\\\\|\\=" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%[Qx]\=?" end="?" skip="\\\\\|\\?" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%[Qx]\=@" end="@" skip="\\\\\|\\@" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%[Qx]\=\\" end="\\"  contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%[Qx]\=\^" end="\^" skip="\\\\\|\\\^" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%[Qx]\=`" end="`" skip="\\\\\|\\`" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%[Qx]\=|" end="|" skip="\\\\\|\\|" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%[Qx]\=\~" end="\~" skip="\\\\\|\\\~" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%[Qx]\={" end="}" skip="\\\\\|\\}" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%[Qx]\=<" end=">" skip="\\\\\|\\>" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%[Qx]\=\[" end="\]" skip="\\\\\|\\\]" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="%[Qx]\=(" end=")" skip="\\\\\|\\)" contains=rubyExprSubst

" Normal String and Shell Command Output:
syn region rubyString matchgroup=rubyStringDelimit start="\"" end="\"" skip="\\\\\|\\\"" contains=rubyExprSubst
syn region rubyString matchgroup=rubyStringDelimit start="'" end="'" skip="\\\\\|\\'"
syn region rubyString matchgroup=rubyStringDelimit start="`" end="`" skip="\\\\\|\\`" contains=rubyExprSubst
"
" END Autogenerated Stuff
"

" Normal Regular Expression:
syn region  rubyString  matchgroup=rubyStringDelimit start="\<if\s*/"lc=2 start="[\~=!|&(,]\s*/"lc=1 end="/[iopx]*" skip="\\\\\|\\/" contains=rubyExprSubst

" Here Document:
syn region  rubyString matchgroup=rubyStringDelimit start=+<<-\(\u\{3,}\|'\u\{3,}'\|"\u\{3,}"\|`\u\{3,}`\)+hs=s+2 end=+^\s*\u\{3,}$+
syn region  rubyString matchgroup=rubyStringDelimit start=+<<-\(EOF\|'EOF'\|"EOF"\|`EOF`\)+hs=s+2 end=+^\s*EOF$+ contains=rubyExprSubst
syn region  rubyString matchgroup=rubyStringDelimit start=+<<-\(EOS\|'EOS'\|"EOS"\|`EOS`\)+hs=s+2 end=+^\s*EOS$+ contains=rubyExprSubst
syn region  rubyString matchgroup=rubyStringDelimit start=+<<\(\u\{3,}\|'\u\{3,}'\|"\u\{3,}"\|`\u\{3,}`\)+hs=s+2 end=+^\u\{3,}$+
syn region  rubyString matchgroup=rubyStringDelimit start=+<<\(EOF\|'EOF'\|"EOF"\|`EOF`\)+hs=s+2 end=+^EOF$+ contains=rubyExprSubst
syn region  rubyString matchgroup=rubyStringDelimit start=+<<\(EOS\|'EOS'\|"EOS"\|`EOS`\)+hs=s+2 end=+^EOS$+ contains=rubyExprSubst

" Expensive Mode: colorize *end* according to opening statement
if !exists("ruby_no_expensive")
  syn region  rubyFunction  matchgroup=rubyDefine start="^\s*def\s" matchgroup=NONE end="[?!]\|\>" skip="\.\|\(::\)" oneline
  syn region  rubyClassOrModule  matchgroup=rubyDefine start="^\s*\(class\|module\)\s" end="<\|$\|;"he=e-1 oneline
  syn region  rubyBlock  start="^\s*def\s\+"rs=s matchgroup=rubyDefine end="\<end\>" contains=ALLBUT,rubyExprSubst,rubyTodo nextgroup=rubyFunction
  syn region  rubyBlock  start="^\s*\(class\|module\)\>"rs=s matchgroup=rubyDefine end="\<end\>" contains=ALLBUT,rubyExprSubst,rubyTodo nextgroup=rubyClassOrModule
  " modifiers + redundant *do*
  syn match   rubyControl  "\<\(if\|unless\|while\|until\|do\)\>"
  " *do* requiring *end*
  syn region  rubyDoBlock  matchgroup=rubyControl start="\<do\>" end="\<end\>" contains=ALLBUT,rubyExprSubst,rubyTodo
  " statements without *do*
  syn region  rubyNoDoBlock  matchgroup=rubyControl start="\<\(case\|begin\)\>" start="^\s*\(if\|unless\)\>" start=";\s*\(if\|unless\)\>"hs=s+1 end="\<end\>" contains=ALLBUT,rubyExprSubst,rubyTodo
  " statement with optional *do*
  syn region  rubyOptDoBlock matchgroup=rubyControl start="\<for\>" start="^\s*\(while\|until\)\>" start=";\s*\(while\|until\)\>"hs=s+1 end="\<end\>" contains=ALLBUT,rubyExprSubst,rubyTodo,rubyDoBlock

  if !exists("ruby_minlines")
    let ruby_minlines = 50
  endif
  exec "syn sync minlines=" . ruby_minlines

else " not Expensive
  syn region  rubyFunction  matchgroup=rubyControl start="^\s*def\s" matchgroup=NONE end="[?!]\|\>" skip="\.\|\(::\)" oneline
  syn region  rubyClassOrModule  matchgroup=rubyControl start="^\s*\(class\|module\)\s" end="<\|$\|;"he=e-1 oneline
  syn keyword rubyControl case begin do for if unless while until end
endif " Expensive?

" Keywords:
syn keyword rubyControl  then else elsif when ensure rescue
syn keyword rubyControl  and or not in yield lambda proc loop
syn keyword rubyControl  break redo retry next return
syn match   rubyInclude  "^\s*include\>"
syn keyword rubyInclude  require
syn keyword rubyTodo  TODO FIXME XXX contained
syn keyword rubyBoolean  true false self nil
syn keyword rubyException  raise fail catch throw

" Comments: and Documentation
syn match   rubyComment  "#.*" contains=rubyTodo
syn match   rubySharpBang  "#!.*"
syn region  rubyDocumentation  start="^=begin" end="^=end.*$" contains=rubyTodo

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_ruby_syntax_inits")
  if version < 508
    let did_ruby_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink rubyDefine          Define
  HiLink rubyFunction        Function
  HiLink rubyControl         Statement
  HiLink rubyInclude         Include
  HiLink rubyNumber          Number
  HiLink rubyBoolean         Boolean
  HiLink rubyException       Exception
  HiLink rubyClassOrModule   Type
  HiLink rubyIdentifier      Special
  HiLink rubySharpBang       PreProc

  HiLink rubyString          String
  HiLink rubyStringDelimit   Delimiter
  HiLink rubyExprSubst       Special

  HiLink rubyComment         Comment
  HiLink rubyDocumentation   Comment
  HiLink rubyTodo            Todo

  delcommand HiLink
endif

let b:current_syntax = "ruby"
