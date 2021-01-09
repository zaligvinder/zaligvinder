(declare-const X String)
; \x2Fta\x2FNEWS\x2F\d+Toolbarwww\x2Eonlinecasinoextra\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "/ta/NEWS/") (re.+ (re.range "0" "9")) (str.to.re "Toolbarwww.onlinecasinoextra.com\x0a")))))
; <[^>\s]*\bauthor\b[^>]*>
(assert (str.in.re X (re.++ (str.to.re "<") (re.* (re.union (str.to.re ">") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "author") (re.* (re.comp (str.to.re ">"))) (str.to.re ">\x0a"))))
; /\x2ejfif([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.jfif") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
