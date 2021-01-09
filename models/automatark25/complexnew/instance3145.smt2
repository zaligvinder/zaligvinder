(declare-const X String)
; ^.+@[^\.].+\.[a-z]{2,}(\.[a-z]{2,}$|$)
(assert (str.in.re X (re.++ (re.+ re.allchar) (str.to.re "@") (re.comp (str.to.re ".")) (re.+ re.allchar) (str.to.re ".\x0a") ((_ re.loop 2 2) (re.range "a" "z")) (re.* (re.range "a" "z")) (str.to.re ".") ((_ re.loop 2 2) (re.range "a" "z")) (re.* (re.range "a" "z")))))
; /\.js\/\?[a-z]+\=[a-z]{1,4}/R
(assert (not (str.in.re X (re.++ (str.to.re "/.js/?") (re.+ (re.range "a" "z")) (str.to.re "=") ((_ re.loop 1 4) (re.range "a" "z")) (str.to.re "/R\x0a")))))
(check-sat)
