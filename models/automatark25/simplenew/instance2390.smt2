(declare-const X String)
; /^GET \u{2F}3010[0-9A-F]{166}00000001/
(assert (not (str.in_re X (re.++ (str.to_re "/GET /3010") ((_ re.loop 166 166) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to_re "00000001/\u{a}")))))
(check-sat)
