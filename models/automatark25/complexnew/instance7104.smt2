(declare-const X String)
; /\x2ebmp([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.bmp") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; /\/[a-zA-Z_-]+\.rtf$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re "-"))) (str.to.re ".rtf/U\x0a")))))
(check-sat)
