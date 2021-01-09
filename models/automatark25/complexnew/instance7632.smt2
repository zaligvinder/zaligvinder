(declare-const X String)
; /filename=[^\n]*\x2evisprj/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".visprj/i\x0a"))))
; /filename=[^\n]*\x2edxf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".dxf/i\x0a")))))
(check-sat)
