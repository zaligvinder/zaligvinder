(declare-const X String)
; [$][0 -9]+
(assert (str.in.re X (re.++ (str.to.re "$") (re.+ (re.union (str.to.re "0") (re.range " " "9"))) (str.to.re "\x0a"))))
(check-sat)
