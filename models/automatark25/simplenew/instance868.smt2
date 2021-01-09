(declare-const X String)
; ^[+-]? *100(\.0{0,2})? *%?$|^[+-]? *\d{1,2}(\.\d{1,2})? *%?$
(assert (str.in.re X (re.union (re.++ (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.* (str.to.re " ")) (str.to.re "100") (re.opt (re.++ (str.to.re ".") ((_ re.loop 0 2) (str.to.re "0")))) (re.* (str.to.re " ")) (re.opt (str.to.re "%"))) (re.++ (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.* (str.to.re " ")) ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (re.* (str.to.re " ")) (re.opt (str.to.re "%")) (str.to.re "\x0a")))))
(check-sat)
