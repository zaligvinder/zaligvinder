(declare-const X String)
; ^(\+|-)?(\d\.\d{1,6}|[1-9]\d\.\d{1,6}|1[1-7]\d\.\d{1,6}|180\.0{1,6})$
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.union (re.++ (re.range "0" "9") (str.to.re ".") ((_ re.loop 1 6) (re.range "0" "9"))) (re.++ (re.range "1" "9") (re.range "0" "9") (str.to.re ".") ((_ re.loop 1 6) (re.range "0" "9"))) (re.++ (str.to.re "1") (re.range "1" "7") (re.range "0" "9") (str.to.re ".") ((_ re.loop 1 6) (re.range "0" "9"))) (re.++ (str.to.re "180.") ((_ re.loop 1 6) (str.to.re "0")))) (str.to.re "\x0a")))))
(check-sat)
