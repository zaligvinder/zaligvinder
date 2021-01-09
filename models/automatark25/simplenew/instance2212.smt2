(declare-const X String)
; /filename=[^\n]*\x2exslt/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xslt/i\x0a")))))
(check-sat)
