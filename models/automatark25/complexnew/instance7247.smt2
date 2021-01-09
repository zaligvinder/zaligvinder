(declare-const X String)
; ^\-?\(?([0-9]{0,3}(\,?[0-9]{3})*(\.?[0-9]*))\)?$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.opt (str.to.re "(")) (re.opt (str.to.re ")")) (str.to.re "\x0a") ((_ re.loop 0 3) (re.range "0" "9")) (re.* (re.++ (re.opt (str.to.re ",")) ((_ re.loop 3 3) (re.range "0" "9")))) (re.opt (str.to.re ".")) (re.* (re.range "0" "9"))))))
; (^[0-9]{2,3}\.[0-9]{3}\.[0-9]{3}\/[0-9]{4}-[0-9]{2}$)
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 2 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")))))
; /filename=[^\n]*\x2emppl/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mppl/i\x0a")))))
(check-sat)
