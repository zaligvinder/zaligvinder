(declare-const X String)
; s_sq=aolsnssigninUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "s_sq=aolsnssigninUser-Agent:\x0a"))))
; (^[1-9]{1,3}(,\d{3})*$)|(^0$)
(assert (not (str.in.re X (re.union (re.++ ((_ re.loop 1 3) (re.range "1" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) (str.to.re "0\x0a")))))
(check-sat)
