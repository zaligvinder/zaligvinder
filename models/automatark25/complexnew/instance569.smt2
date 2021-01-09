(declare-const X String)
; Serverwjpropqmlpohj\x2floHost\x3AKEY=
(assert (str.in.re X (str.to.re "Serverwjpropqmlpohj/loHost:KEY=\x0a")))
; /filename=[^\n]*\x2emht/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mht/i\x0a"))))
(check-sat)
