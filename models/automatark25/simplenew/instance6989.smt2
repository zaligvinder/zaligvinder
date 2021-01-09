(declare-const X String)
; ^(389)[0-9]{11}$
(assert (str.in.re X (re.++ (str.to.re "389") ((_ re.loop 11 11) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
