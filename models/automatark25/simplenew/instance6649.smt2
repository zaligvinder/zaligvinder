(declare-const X String)
; /sid=[0-9A-F]{32}/U
(assert (not (str.in_re X (re.++ (str.to_re "/sid=") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to_re "/U\u{a}")))))
(check-sat)
