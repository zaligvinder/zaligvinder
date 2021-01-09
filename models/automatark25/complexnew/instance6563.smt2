(declare-const X String)
; /filename=[^\n]*\x2ef4p/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".f4p/i\x0a")))))
; Host\x3A\x2Fta\x2FNEWS\x2Fyayad\x2Ecom
(assert (not (str.in.re X (str.to.re "Host:/ta/NEWS/yayad.com\x13\x0a"))))
; Softwarerequestedoffers\x2Ebullseye-network\x2Ecom
(assert (not (str.in.re X (str.to.re "Softwarerequestedoffers.bullseye-network.com\x0a"))))
; ^(\+[0-9]{2,}[0-9]{4,}[0-9]*)(x?[0-9]{1,})?$
(assert (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "x")) (re.+ (re.range "0" "9")))) (str.to.re "\x0a+") (re.* (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")) (re.* (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9")) (re.* (re.range "0" "9")))))
(check-sat)
