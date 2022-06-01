(declare-const X String)
; ^[a-zA-Z]{1,3}\[([0-9]{1,3})\]
(assert (not (str.in_re X (re.++ ((_ re.loop 1 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "[") ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re "]\u{a}")))))
(check-sat)
