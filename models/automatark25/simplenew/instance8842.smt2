(declare-const X String)
; &#\d{2,5};
(assert (not (str.in.re X (re.++ (str.to.re "&#") ((_ re.loop 2 5) (re.range "0" "9")) (str.to.re ";\x0a")))))
(check-sat)
