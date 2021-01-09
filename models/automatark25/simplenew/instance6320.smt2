(declare-const X String)
; ^\[0-9]{4}\-\[0-9]{2}\-\[0-9]{2}$
(assert (not (str.in.re X (re.++ (str.to.re "[0-9") ((_ re.loop 4 4) (str.to.re "]")) (str.to.re "-[0-9") ((_ re.loop 2 2) (str.to.re "]")) (str.to.re "-[0-9") ((_ re.loop 2 2) (str.to.re "]")) (str.to.re "\x0a")))))
(check-sat)
