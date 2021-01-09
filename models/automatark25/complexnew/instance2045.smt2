(declare-const X String)
; ((EE|EL|DE|PT)-?)?[0-9]{9}
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.union (str.to.re "EE") (str.to.re "EL") (str.to.re "DE") (str.to.re "PT")) (re.opt (str.to.re "-")))) ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2echm/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".chm/i\x0a")))))
; ^([a-zA-Z0-9_\-\._]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-_]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re "."))) (str.to.re "@") (re.union (re.++ (str.to.re "[") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".")) (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-") (str.to.re "_"))) (str.to.re ".")))) (re.union ((_ re.loop 2 4) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 1 3) (re.range "0" "9"))) (re.opt (str.to.re "]")) (str.to.re "\x0a")))))
(check-sat)
