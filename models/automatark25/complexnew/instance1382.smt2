(declare-const X String)
; ^((5[1-5])([0-9]{2})((-|\s)?[0-9]{4}){3})$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 3 3) (re.++ (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")))) (str.to.re "5") (re.range "1" "5")))))
; /filename=[^\n]*\x2eflv/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".flv/i\x0a"))))
(check-sat)
