(declare-const X String)
; <[^>]*>
(assert (str.in.re X (re.++ (str.to.re "<") (re.* (re.comp (str.to.re ">"))) (str.to.re ">\x0a"))))
; fsbuffsearch\x2econduit\x2ecomocllceclbhs\x2fgth
(assert (not (str.in.re X (str.to.re "fsbuffsearch.conduit.comocllceclbhs/gth\x0a"))))
; /filename=[^\n]*\x2ewmx/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wmx/i\x0a"))))
(check-sat)
