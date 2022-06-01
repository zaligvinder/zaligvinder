(declare-const X String)
; (^[1-9]{1,3}(,\d{3})*$)|(^0$)
(assert (str.in_re X (re.union (re.++ ((_ re.loop 1 3) (re.range "1" "9")) (re.* (re.++ (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) (str.to_re "0\u{a}"))))
(check-sat)
