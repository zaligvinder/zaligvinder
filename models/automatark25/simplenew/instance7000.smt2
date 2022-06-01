(declare-const X String)
; [DJF]{1}[0-9]{5,8}
(assert (not (str.in_re X (re.++ ((_ re.loop 1 1) (re.union (str.to_re "D") (str.to_re "J") (str.to_re "F"))) ((_ re.loop 5 8) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
