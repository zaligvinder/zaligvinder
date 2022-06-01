(declare-const X String)
; Servidor\u{2E}home\u{2E}edonkey\u{2E}com
(assert (str.in_re X (str.to_re "Servidor.\u{13}home.edonkey.com\u{a}")))
(check-sat)
