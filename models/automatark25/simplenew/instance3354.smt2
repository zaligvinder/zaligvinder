(declare-const X String)
; /filename=[^\n]*\x2ep2g/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".p2g/i\x0a")))))
(check-sat)
