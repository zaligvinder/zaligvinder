(declare-const X String)
; 62[0-9]{14,17}
(assert (str.in.re X (re.++ (str.to.re "62") ((_ re.loop 14 17) (re.range "0" "9")) (str.to.re "\x0a"))))
; /\x2epfa([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.pfa") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; /\x2em4b([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.m4b") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
