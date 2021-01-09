(declare-const X String)
; ^(1[89]|[2-9]\d)$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "1") (re.union (str.to.re "8") (str.to.re "9"))) (re.++ (re.range "2" "9") (re.range "0" "9"))) (str.to.re "\x0a")))))
; /\x2esami([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.sami") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
