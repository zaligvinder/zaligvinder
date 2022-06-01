(declare-const X String)
; Serverwjpropqmlpohj\u{2f}loHost\u{3A}KEY=
(assert (str.in_re X (str.to_re "Serverwjpropqmlpohj/loHost:KEY=\u{a}")))
; /^.{27}/sR
(assert (not (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 27 27) re.allchar) (str.to_re "/sR\u{a}")))))
(check-sat)
