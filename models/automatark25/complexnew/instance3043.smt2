(declare-const X String)
; /filename=\x22\d+\x22\r\n/P
(assert (not (str.in.re X (re.++ (str.to.re "/filename=\x22") (re.+ (re.range "0" "9")) (str.to.re "\x22\x0d\x0a/P\x0a")))))
; (0?[1-9]|[12][0-9]|3[01])-(0?[1-9]|1[012])-((19|20)\\d\\d)
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1")))) (str.to.re "-") (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2")))) (str.to.re "-\x0a") (re.union (str.to.re "19") (str.to.re "20")) (str.to.re "\x5cd\x5cd")))))
; ^[^iIoOqQ'-]{10,17}$
(assert (not (str.in.re X (re.++ ((_ re.loop 10 17) (re.union (str.to.re "i") (str.to.re "I") (str.to.re "o") (str.to.re "O") (str.to.re "q") (str.to.re "Q") (str.to.re "'") (str.to.re "-"))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2ehpj/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".hpj/i\x0a"))))
(check-sat)
