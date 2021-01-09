(declare-const X String)
; ^\d{1}(\.\d{3})-\d{3}(\.\d{1})$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a.") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 1) (re.range "0" "9")))))
; /filename=[^\n]*\x2ecov/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".cov/i\x0a")))))
(check-sat)
