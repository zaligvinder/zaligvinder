(declare-const X String)
; ProSpywww\u{2E}emp3finder\u{2E}comwww
(assert (not (str.in_re X (str.to_re "ProSpywww.emp3finder.comwww\u{a}"))))
(check-sat)
