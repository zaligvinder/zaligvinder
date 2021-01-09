(declare-const X String)
; ^\({0,1}0(2|3|7|8)\){0,1}(\ |-){0,1}[0-9]{4}(\ |-){0,1}[0-9]{4}$
(assert (str.in.re X (re.++ (re.opt (str.to.re "(")) (str.to.re "0") (re.union (str.to.re "2") (str.to.re "3") (str.to.re "7") (str.to.re "8")) (re.opt (str.to.re ")")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^[1-9]\d*\.?[0]*$
(assert (not (str.in.re X (re.++ (re.range "1" "9") (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.* (str.to.re "0")) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2ewebm/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".webm/i\x0a")))))
(check-sat)
