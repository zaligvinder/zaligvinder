(declare-const X String)
; ^([0-9]( |-)?)?(\(?[0-9]{3}\)?|[0-9]{3})( |-)?([0-9]{3}( |-)?[0-9]{4}|[a-zA-Z0-9]{7})$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.range "0" "9") (re.opt (re.union (str.to.re " ") (str.to.re "-"))))) (re.union (re.++ (re.opt (str.to.re "(")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re ")"))) ((_ re.loop 3 3) (re.range "0" "9"))) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) (re.union (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 4 4) (re.range "0" "9"))) ((_ re.loop 7 7) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
