(declare-const X String)
; \u{2F}ta\u{2F}NEWS\u{2F}\d+Toolbarwww\u{2E}onlinecasinoextra\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "/ta/NEWS/") (re.+ (re.range "0" "9")) (str.to_re "Toolbarwww.onlinecasinoextra.com\u{a}")))))
; <[^>\s]*\bauthor\b[^>]*>
(assert (str.in_re X (re.++ (str.to_re "<") (re.* (re.union (str.to_re ">") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "author") (re.* (re.comp (str.to_re ">"))) (str.to_re ">\u{a}"))))
; /\u{2e}jfif([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.jfif") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
(check-sat)
