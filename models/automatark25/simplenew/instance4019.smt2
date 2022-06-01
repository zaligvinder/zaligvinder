(declare-const X String)
; Keylogger-Protoolbarplace\u{2E}com
(assert (str.in_re X (str.to_re "Keylogger-Protoolbarplace.com\u{a}")))
(check-sat)
