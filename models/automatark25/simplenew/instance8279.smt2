(declare-const X String)
; ^\d{9}[\d|X]$
(assert (str.in_re X (re.++ ((_ re.loop 9 9) (re.range "0" "9")) (re.union (re.range "0" "9") (str.to_re "|") (str.to_re "X")) (str.to_re "\u{a}"))))
(check-sat)
