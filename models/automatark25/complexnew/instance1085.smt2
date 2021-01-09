(declare-const X String)
; \d{5,12}|\d{1,10}\.\d{1,10}\.\d{1,10}|\d{1,10}\.\d{1,10}
(assert (str.in.re X (re.union ((_ re.loop 5 12) (re.range "0" "9")) (re.++ ((_ re.loop 1 10) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 10) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 10) (re.range "0" "9"))) (re.++ ((_ re.loop 1 10) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 10) (re.range "0" "9")) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2edcr/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".dcr/i\x0a"))))
(check-sat)
