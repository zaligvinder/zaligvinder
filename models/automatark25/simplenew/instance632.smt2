(declare-const X String)
; <img([^>]*[^/])>
(assert (str.in.re X (re.++ (str.to.re "<img>\x0a") (re.* (re.comp (str.to.re ">"))) (re.comp (str.to.re "/")))))
(check-sat)
