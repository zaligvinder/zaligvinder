(declare-const X String)
; Serverwjpropqmlpohj\u{2f}loHost\u{3A}KEY=
(assert (str.in_re X (str.to_re "Serverwjpropqmlpohj/loHost:KEY=\u{a}")))
; /filename=[^\n]*\u{2e}mht/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mht/i\u{a}"))))
(check-sat)
