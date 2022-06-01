(declare-const X String)
; ^(010|011|012)[0-9]{7}$
(assert (not (str.in_re X (re.++ ((_ re.loop 7 7) (re.range "0" "9")) (str.to_re "\u{a}01") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2"))))))
(check-sat)
