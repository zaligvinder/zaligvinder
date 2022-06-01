(declare-const X String)
; securityOmFkbWluADROARad\u{2E}mokead\u{2E}com\u{3C}\u{2F}chat\u{3E}
(assert (str.in_re X (str.to_re "securityOmFkbWluADROARad.mokead.com</chat>\u{a}")))
(check-sat)
