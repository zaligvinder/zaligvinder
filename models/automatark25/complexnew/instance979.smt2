(declare-const X String)
; ^[2-9]\d{2}-\d{3}-\d{4}$
(assert (str.in.re X (re.++ (re.range "2" "9") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^[^-]{1}?[^\"\']*$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.comp (str.to.re "-"))) (re.* (re.union (str.to.re "\x22") (str.to.re "'"))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2ejfif/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jfif/i\x0a"))))
(check-sat)
