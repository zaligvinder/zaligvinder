(declare-const X String)
; /filename=[^\n]*\x2edcr/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".dcr/i\x0a"))))
; [\x80-\xFF]
(assert (not (str.in.re X (re.++ (re.range "\x80" "\xff") (str.to.re "\x0a")))))
(check-sat)
