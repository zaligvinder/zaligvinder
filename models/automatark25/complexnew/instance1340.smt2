(declare-const X String)
; /\x2edoc([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.doc") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; ([^\\"]|\\.)*
(assert (not (str.in.re X (re.++ (re.* (re.union (re.++ (str.to.re "\x5c") re.allchar) (str.to.re "\x5c") (str.to.re "\x22"))) (str.to.re "\x0a")))))
(check-sat)
