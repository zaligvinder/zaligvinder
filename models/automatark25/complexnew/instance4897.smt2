(declare-const X String)
; /filename=[^\n]*\x2epfb/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pfb/i\x0a")))))
; (^(30)[0-5]\d{11}$)|(^(36)\d{12}$)|(^(38[0-8])\d{11}$)
(assert (str.in.re X (re.union (re.++ (str.to.re "30") (re.range "0" "5") ((_ re.loop 11 11) (re.range "0" "9"))) (re.++ (str.to.re "36") ((_ re.loop 12 12) (re.range "0" "9"))) (re.++ (str.to.re "\x0a") ((_ re.loop 11 11) (re.range "0" "9")) (str.to.re "38") (re.range "0" "8")))))
; /filename=[^\n]*\x2ewax/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wax/i\x0a")))))
(check-sat)
