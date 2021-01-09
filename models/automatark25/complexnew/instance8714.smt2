(declare-const X String)
; DigExt.*\x23\x23\x23\x23
(assert (str.in.re X (re.++ (str.to.re "DigExt") (re.* re.allchar) (str.to.re "####\x0a"))))
; /filename=[^\n]*\x2ewma/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wma/i\x0a")))))
(check-sat)
