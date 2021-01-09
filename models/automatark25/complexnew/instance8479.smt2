(declare-const X String)
; [0-9.\-/+() ]{4,}
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 4 4) (re.union (re.range "0" "9") (str.to.re ".") (str.to.re "-") (str.to.re "/") (str.to.re "+") (str.to.re "(") (str.to.re ")") (str.to.re " "))) (re.* (re.union (re.range "0" "9") (str.to.re ".") (str.to.re "-") (str.to.re "/") (str.to.re "+") (str.to.re "(") (str.to.re ")") (str.to.re " ")))))))
; ^[S-s]( |-)?[1-9]{1}[0-9]{2}( |-)?[0-9]{2}$
(assert (not (str.in.re X (re.++ (re.range "S" "s") (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
