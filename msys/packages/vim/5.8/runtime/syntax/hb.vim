" Vim syntax file
" Language:	Hyper Builder
" Maintainer:	Alejandro Forero Cuervo
" URL:		http://bachue.com/hb/vim/syntax/hb.vim
" Last Change:	2001 May 09

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Read the HTML syntax to start with
"syn include @HTMLStuff <sfile>:p:h/htmlhb.vim

"this would be nice but we are supposed not to do it
"set mps=<:>

"syn region  HBhtmlString contained start=+"+ end=+"+ contains=htmlSpecialChar
"syn region  HBhtmlString contained start=+'+ end=+'+ contains=htmlSpecialChar

"syn match   htmlValue    contained "=[\t ]*[^'" \t>][^ \t>]*"

syn match   htmlSpecialChar "&[^;]*;" contained

syn match   HBhtmlTagSk  contained "[A-Za-z]*"

syn match   HBhtmlTagS   contained "<\s*\(hb\s*\.\s*\(sec\|min\|hour\|day\|mon\|year\|input\|html\|time\|getcookie\|streql\|url-enc\)\|wall\s*\.\s*\(show\|info\|id\|new\|rm\|count\)\|auth\s*\.\s*\(chk\|add\|find\|user\)\|math\s*\.\s*exp\)\s*\([^.A-Za-z0-9]\|$\)" contains=HBhtmlTagSk transparent

syn match   HBhtmlTagN   contained "[A-Za-z0-9\/\-]\+"

syn match   HBhtmlTagB   contained "<\s*[A-Za-z0-9\/\-]\+\(\s*\.\s*[A-Za-z0-9\/\-]\+\)*" contains=HBhtmlTagS,HBhtmlTagN

syn region  HBhtmlTag contained start=+<+ end=+>+ contains=HBhtmlTagB,HBDirectiveError

syn match HBFileName ".*" contained

syn match HBDirectiveKeyword	":\s*\(include\|lib\|set\|out\)\s\+" contained

syn match HBDirectiveError	"^:.*$" contained

"syn match HBDirectiveBlockEnd "^:\s*$" contained

"syn match HBDirectiveOutHead "^:\s*out\s\+\S\+.*" contained contains=HBDirectiveKeyword,HBFileName

"syn match HBDirectiveSetHead "^:\s*set\s\+\S\+.*" contained contains=HBDirectiveKeyword,HBFileName

syn match HBInvalidLine "^.*$"

syn match HBDirectiveInclude "^:\s*include\s\+\S\+.*$" contains=HBFileName,HBDirectiveKeyword

syn match HBDirectiveLib "^:\s*lib\s\+\S\+.*$" contains=HBFileName,HBDirectiveKeyword

syn region HBText matchgroup=HBDirectiveKeyword start=/^:\(set\|out\)\s*\S\+.*$/ end=/^:\s*$/ contains=HBDirectiveError,htmlSpecialChar,HBhtmlTag keepend

"syn match HBLine "^:.*$" contains=HBDirectiveInclude,HBDirectiveLib,HBDirectiveError,HBDirectiveSet,HBDirectiveOut

syn match HBComment "^#.*$"

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_hb_syntax_inits")
  if version < 508
    let did_hb_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink HBhtmlString                    String
  HiLink HBhtmlTagN                      Function
  HiLink htmlSpecialChar                 String

  HiLink HBInvalidLine Error
  HiLink HBFoobar Comment
  hi HBFileName guibg=lightgray guifg=black
  HiLink HBDirectiveError Error
  HiLink HBDirectiveBlockEnd HBDirectiveKeyword
  hi HBDirectiveKeyword guibg=lightgray guifg=darkgreen
  HiLink HBComment Comment
  HiLink HBhtmlTagSk Statement

  delcommand HiLink
endif

syn sync match Normal grouphere NONE "^:\s*$"
syn sync match Normal grouphere NONE "^:\s*lib\s\+[^ \t]\+$"
syn sync match Normal grouphere NONE "^:\s*include\s\+[^ \t]\+$"
"syn sync match Block  grouphere HBDirectiveSet "^#:\s*set\s\+[^ \t]\+"
"syn sync match Block  grouphere HBDirectiveOut "^#:\s*out\s\+[^ \t]\+"

let b:current_syntax = "hb"

" vim: ts=8
