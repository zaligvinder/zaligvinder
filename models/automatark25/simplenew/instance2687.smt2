(declare-const X String)
; /(bot|spider|crawler|google)/
(assert (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "bot") (str.to.re "spider") (str.to.re "crawler") (str.to.re "google")) (str.to.re "/\x0a"))))
(check-sat)
