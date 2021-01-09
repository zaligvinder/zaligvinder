(declare-const X String)
; /filename=[^\n]*\x2epict/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pict/i\x0a")))))
; ^[A-Z0-9a-z'&()/]{0,1}[A-Z0-9a-z'&()/]{0,1}(([A-Z0-9a-z'&()/_-])|(\\s)){0,47}[A-Z0-9a-z'&()/]{1}$
(assert (not (str.in.re X (re.++ (re.opt (re.union (re.range "A" "Z") (re.range "0" "9") (re.range "a" "z") (str.to.re "'") (str.to.re "&") (str.to.re "(") (str.to.re ")") (str.to.re "/"))) (re.opt (re.union (re.range "A" "Z") (re.range "0" "9") (re.range "a" "z") (str.to.re "'") (str.to.re "&") (str.to.re "(") (str.to.re ")") (str.to.re "/"))) ((_ re.loop 0 47) (re.union (str.to.re "\x5cs") (re.range "A" "Z") (re.range "0" "9") (re.range "a" "z") (str.to.re "'") (str.to.re "&") (str.to.re "(") (str.to.re ")") (str.to.re "/") (str.to.re "_") (str.to.re "-"))) ((_ re.loop 1 1) (re.union (re.range "A" "Z") (re.range "0" "9") (re.range "a" "z") (str.to.re "'") (str.to.re "&") (str.to.re "(") (str.to.re ")") (str.to.re "/"))) (str.to.re "\x0a")))))
; ^(\d{1,4}?[.]{0,1}?\d{0,3}?)$
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 1 4) (re.range "0" "9")) (re.opt (str.to.re ".")) ((_ re.loop 0 3) (re.range "0" "9")))))
; ^([12]?[0-9]|3[01])$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (re.union (str.to.re "1") (str.to.re "2"))) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1")))) (str.to.re "\x0a")))))
; \b(0?[1-9]|1[0-2])(\-)(0?[1-9]|1[0-9]|2[0-9]|3[0-1])(\-)(0[0-8])\b
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "-") (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "1"))) (str.to.re "-\x0a0") (re.range "0" "8")))))
(check-sat)
