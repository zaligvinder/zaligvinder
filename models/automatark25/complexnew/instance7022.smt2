(declare-const X String)
; Serverwjpropqmlpohj\x2floHost\x3AKEY=
(assert (str.in.re X (str.to.re "Serverwjpropqmlpohj/loHost:KEY=\x0a")))
; /^.{27}/sR
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 27 27) re.allchar) (str.to.re "/sR\x0a")))))
(check-sat)
