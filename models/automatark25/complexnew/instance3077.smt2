(declare-const X String)
; /filename=[^\n]*\x2espx/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".spx/i\x0a"))))
; \|(http.*)\|(.*)$/ig
(assert (str.in.re X (re.++ (str.to.re "||") (re.* re.allchar) (str.to.re "/ig\x0ahttp") (re.* re.allchar))))
(check-sat)
