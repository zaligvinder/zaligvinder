(declare-const X String)
; ^(389)[0-9]{11}$
(assert (str.in_re X (re.++ (str.to_re "389") ((_ re.loop 11 11) (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)
