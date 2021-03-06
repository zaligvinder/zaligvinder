(declare-const X String)
; ^(([0-9])|([0-1][0-9])|([2][0-3])):?([0-5][0-9])$
(assert (str.in.re X (re.++ (re.union (re.range "0" "9") (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (re.opt (str.to.re ":")) (str.to.re "\x0a") (re.range "0" "5") (re.range "0" "9"))))
; ^(\$\ |\$)?((0|00|[1-9]\d*|([1-9]\d{0,2}(\,\d{3})*))(\.\d{1,4})?|(\.\d{1,4}))$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "$ ")) (re.union (re.++ (re.union (str.to.re "0") (str.to.re "00") (re.++ (re.range "1" "9") (re.* (re.range "0" "9"))) (re.++ (re.range "1" "9") ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")))))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 4) (re.range "0" "9"))))) (re.++ (str.to.re ".") ((_ re.loop 1 4) (re.range "0" "9")))) (str.to.re "\x0a")))))
; [A-Za-z]{2}[0-9]{1,6}|[0-9]{1,8}
(assert (not (str.in.re X (re.union (re.++ ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 1 6) (re.range "0" "9"))) (re.++ ((_ re.loop 1 8) (re.range "0" "9")) (str.to.re "\x0a"))))))
(check-sat)
