(declare-const X String)
; addrwww\u{2E}trustedsearch\u{2E}comX-Mailer\u{3A}
(assert (not (str.in_re X (str.to_re "addrwww.trustedsearch.comX-Mailer:\u{13}\u{a}"))))
(check-sat)
