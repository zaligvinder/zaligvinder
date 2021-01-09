(declare-const X String)
; (^\d*\.\d{2}$)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.* (re.range "0" "9")) (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9"))))))
(check-sat)
