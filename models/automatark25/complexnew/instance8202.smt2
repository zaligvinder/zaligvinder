(declare-const X String)
; ^([1-9]|(0|1|2)[0-9]|30)(/|-)([1-9]|1[0-2]|0[1-9])(/|-)(14[0-9]{2})$
(assert (not (str.in.re X (re.++ (re.union (re.range "1" "9") (re.++ (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (str.to.re "30")) (re.union (str.to.re "/") (str.to.re "-")) (re.union (re.range "1" "9") (re.++ (str.to.re "1") (re.range "0" "2")) (re.++ (str.to.re "0") (re.range "1" "9"))) (re.union (str.to.re "/") (str.to.re "-")) (str.to.re "\x0a14") ((_ re.loop 2 2) (re.range "0" "9"))))))
; ((\bm_[a-zA-Z\d]*\b)|(\bin_[a-zA-Z\d]*\b)|(\bin _[a-zA-Z\d]*\b))
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "m_") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))) (re.++ (str.to.re "in_") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))) (re.++ (str.to.re "in _") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))) (str.to.re "\x0a")))))
(check-sat)
