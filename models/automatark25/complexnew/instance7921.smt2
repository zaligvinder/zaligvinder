(declare-const X String)
; ^([0-1]?[0-9]|[2][0-3]):([0-5][0-9]):([0-5][0-9])$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (re.range "0" "1")) (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re "::\x0a") (re.range "0" "5") (re.range "0" "9") (re.range "0" "5") (re.range "0" "9")))))
; \b[1-9]\d{3}\ +[A-Z]{2}\b
(assert (str.in.re X (re.++ (re.range "1" "9") ((_ re.loop 3 3) (re.range "0" "9")) (re.+ (str.to.re " ")) ((_ re.loop 2 2) (re.range "A" "Z")) (str.to.re "\x0a"))))
; ^((\+)?(\d{2}[-]))?(\d{10}){1}?$
(assert (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "+")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-"))) ((_ re.loop 1 1) ((_ re.loop 10 10) (re.range "0" "9"))) (str.to.re "\x0a"))))
; ^[\w_.]{5,12}$
(assert (str.in.re X (re.++ ((_ re.loop 5 12) (re.union (str.to.re "_") (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a"))))
(check-sat)
