(declare-const X String)
; /filename=[^\n]*\x2exspf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xspf/i\x0a")))))
(check-sat)
