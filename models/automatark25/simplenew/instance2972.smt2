(declare-const X String)
; Toolbar\u{5C}home\/lordofsearchthis
(assert (not (str.in_re X (str.to_re "Toolbar\u{5c}home/lordofsearchthis\u{a}"))))
(check-sat)
