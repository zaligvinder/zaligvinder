(declare-const X String)
; ^((Sir|Dr.|Mr.|Mrs.|Ms.|Rev.){1}[ ]?)?([A-Z]{1}[.]{1}([A-Z]{1}[.]{1})?|[A-Z]{1}[a-z]{1,}|[A-Z]{1}[a-z]{1,}[-]{1}[A-Z]{1}[a-z]{1,}|[A-Z]{1}[a-z]{0,}[ ]{1}[A-Z]{1}[a-z]{0,}){1}$
(assert (not (str.in.re X (re.++ (re.opt (re.++ ((_ re.loop 1 1) (re.union (str.to.re "Sir") (re.++ (str.to.re "Dr") re.allchar) (re.++ (str.to.re "Mr") re.allchar) (re.++ (str.to.re "Mrs") re.allchar) (re.++ (str.to.re "Ms") re.allchar) (re.++ (str.to.re "Rev") re.allchar))) (re.opt (str.to.re " ")))) ((_ re.loop 1 1) (re.union (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) ((_ re.loop 1 1) (str.to.re ".")) (re.opt (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) ((_ re.loop 1 1) (str.to.re "."))))) (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) (re.+ (re.range "a" "z"))) (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) (re.+ (re.range "a" "z")) ((_ re.loop 1 1) (str.to.re "-")) ((_ re.loop 1 1) (re.range "A" "Z")) (re.+ (re.range "a" "z"))) (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) (re.* (re.range "a" "z")) ((_ re.loop 1 1) (str.to.re " ")) ((_ re.loop 1 1) (re.range "A" "Z")) (re.* (re.range "a" "z"))))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2exslt/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xslt/i\x0a"))))
; for\x2Fproducts\x2Fspyblocs\x2FHost\x3Aocllceclbhs\x2fgth
(assert (str.in.re X (str.to.re "for/products/spyblocs/\x13Host:ocllceclbhs/gth\x0a")))
; Host\x3Ahirmvtg\x2fggqh\.kqhverA-Spy
(assert (str.in.re X (str.to.re "Host:hirmvtg/ggqh.kqh\x1bverA-Spy\x0a")))
(check-sat)
