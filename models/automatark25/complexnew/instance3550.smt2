(declare-const X String)
; ^([\s\S]){1,20}([\s\.])
(assert (not (str.in.re X (re.++ ((_ re.loop 1 20) (re.union (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re ".") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "\x0a")))))
; ^\({0,1}((0|\+61)(2|4|3|7|8)){0,1}\){0,1}(\ |-){0,1}[0-9]{2}(\ |-){0,1}[0-9]{2}(\ |-){0,1}[0-9]{1}(\ |-){0,1}[0-9]{3}$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "(")) (re.opt (re.++ (re.union (str.to.re "0") (str.to.re "+61")) (re.union (str.to.re "2") (str.to.re "4") (str.to.re "3") (str.to.re "7") (str.to.re "8")))) (re.opt (str.to.re ")")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 1 1) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^(^[0-9]*(^[0-9]*[\.][0-9]+){0,1}$)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.* (re.range "0" "9")) (re.opt (re.++ (re.* (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9"))))))))
(check-sat)
