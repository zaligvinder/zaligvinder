(declare-const X String)
; Host\u{3A}1\-extreme\u{2E}bizX-Mailer\u{3a}www\u{2E}webcruiser\u{2E}cc
(assert (not (str.in_re X (str.to_re "Host:1-extreme.bizX-Mailer:\u{13}www.webcruiser.cc\u{a}"))))
(check-sat)
