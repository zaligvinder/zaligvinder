(declare-const X String)
; Keylogger-Protoolbarplace\x2Ecom
(assert (str.in.re X (str.to.re "Keylogger-Protoolbarplace.com\x0a")))
(check-sat)
