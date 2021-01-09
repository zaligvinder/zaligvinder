(declare-const X String)
; /filename=[^\n]*\x2em4b/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".m4b/i\x0a"))))
; ^1+0+$
(assert (str.in.re X (re.++ (re.+ (str.to.re "1")) (re.+ (str.to.re "0")) (str.to.re "\x0a"))))
(check-sat)
