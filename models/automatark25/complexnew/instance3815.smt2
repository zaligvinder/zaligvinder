(declare-const X String)
; securityOmFkbWluADROARad\u{2E}mokead\u{2E}com\u{3C}\u{2F}chat\u{3E}
(assert (not (str.in_re X (str.to_re "securityOmFkbWluADROARad.mokead.com</chat>\u{a}"))))
; /\u{2}[^\u{a}]+\u{3a}[^\u{a}]+\u{a}/
(assert (str.in_re X (re.++ (str.to_re "/\u{2}") (re.+ (re.comp (str.to_re "\u{a}"))) (str.to_re ":") (re.+ (re.comp (str.to_re "\u{a}"))) (str.to_re "\u{a}/\u{a}"))))
(check-sat)
