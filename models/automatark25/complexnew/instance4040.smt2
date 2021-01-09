(declare-const X String)
; /\x2ewk4([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.wk4") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; (\<!--\s*.*?((--\>)|$))
(assert (not (str.in.re X (re.++ (str.to.re "\x0a<!--") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* re.allchar) (str.to.re "-->")))))
(check-sat)
