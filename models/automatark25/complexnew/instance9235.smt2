(declare-const X String)
; ^[A-Z]{1}-[0-9]{7}$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) (str.to.re "-") ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^(\$\ |\$)?((0|00|[1-9]\d*|([1-9]\d{0,2}(\,\d{3})*))(\.\d{1,4})?|(\.\d{1,4}))$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "$ ")) (re.union (re.++ (re.union (str.to.re "0") (str.to.re "00") (re.++ (re.range "1" "9") (re.* (re.range "0" "9"))) (re.++ (re.range "1" "9") ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")))))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 4) (re.range "0" "9"))))) (re.++ (str.to.re ".") ((_ re.loop 1 4) (re.range "0" "9")))) (str.to.re "\x0a")))))
; \d{2}[.]{1}\d{2}[.]{1}[0-9A-Za-z]{1}
(assert (not (str.in.re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 1 1) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z"))) (str.to.re "\x0a")))))
(check-sat)
