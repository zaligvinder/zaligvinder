(declare-const X String)
; ^.+@[^\.].*\.[a-z]{2,}$
(assert (str.in.re X (re.++ (re.+ re.allchar) (str.to.re "@") (re.comp (str.to.re ".")) (re.* re.allchar) (str.to.re ".\x0a") ((_ re.loop 2 2) (re.range "a" "z")) (re.* (re.range "a" "z")))))
; /filename=[^\n]*\x2em4r/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".m4r/i\x0a"))))
(check-sat)
