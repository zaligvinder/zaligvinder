(declare-const X String)
; ^[1-9]+\d*\.\d{2}$
(assert (not (str.in.re X (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
