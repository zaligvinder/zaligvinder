(declare-const X String)
; /(action|setup)=[a-z]{1,4}/Ri
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "action") (str.to.re "setup")) (str.to.re "=") ((_ re.loop 1 4) (re.range "a" "z")) (str.to.re "/Ri\x0a")))))
; ^[+-]? *100(\.0{0,2})? *%?$|^[+-]? *\d{1,2}(\.\d{1,2})? *%?$
(assert (not (str.in.re X (re.union (re.++ (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.* (str.to.re " ")) (str.to.re "100") (re.opt (re.++ (str.to.re ".") ((_ re.loop 0 2) (str.to.re "0")))) (re.* (str.to.re " ")) (re.opt (str.to.re "%"))) (re.++ (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.* (str.to.re " ")) ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (re.* (str.to.re " ")) (re.opt (str.to.re "%")) (str.to.re "\x0a"))))))
(check-sat)
