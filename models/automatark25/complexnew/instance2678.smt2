(declare-const X String)
; ^([9]{1})([234789]{1})([0-9]{8})$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (str.to.re "9")) ((_ re.loop 1 1) (re.union (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "7") (str.to.re "8") (str.to.re "9"))) ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a"))))
; [\d+]{10}\@[\w]+\.?[\w]+?\.?[\w]+?\.?[\w+]{2,4}/i
(assert (str.in.re X (re.++ ((_ re.loop 10 10) (re.union (re.range "0" "9") (str.to.re "+"))) (str.to.re "@") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.opt (str.to.re ".")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.opt (str.to.re ".")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.opt (str.to.re ".")) ((_ re.loop 2 4) (re.union (str.to.re "+") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "/i\x0a"))))
; This\s+\x7D\x7BPassword\x3A\d+
(assert (not (str.in.re X (re.++ (str.to.re "This") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "}{Password:\x1b") (re.+ (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
