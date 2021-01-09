(declare-const X String)
; ^.+@[^\.].*\.[a-z]{2,}$
(assert (not (str.in.re X (re.++ (re.+ re.allchar) (str.to.re "@") (re.comp (str.to.re ".")) (re.* re.allchar) (str.to.re ".\x0a") ((_ re.loop 2 2) (re.range "a" "z")) (re.* (re.range "a" "z"))))))
(check-sat)
