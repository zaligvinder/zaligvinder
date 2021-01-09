(declare-const X String)
; \?<.+?>
(assert (str.in.re X (re.++ (str.to.re "?<") (re.+ re.allchar) (str.to.re ">\x0a"))))
; /filename=[^\n]*\x2emswmm/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mswmm/i\x0a"))))
(check-sat)
