(declare-const X String)
; ^\({0,1}0(2|3|7|8)\){0,1}(\ |-){0,1}[0-9]{4}(\ |-){0,1}[0-9]{4}$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "(")) (str.to.re "0") (re.union (str.to.re "2") (str.to.re "3") (str.to.re "7") (str.to.re "8")) (re.opt (str.to.re ")")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; (^\d{5}\x2D\d{3}$)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9"))))))
(check-sat)
