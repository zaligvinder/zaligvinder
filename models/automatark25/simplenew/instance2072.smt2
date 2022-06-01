(declare-const X String)
; yddznydqir\u{2f}eviaresflashdownloader\u{2E}com
(assert (not (str.in_re X (str.to_re "yddznydqir/eviaresflashdownloader.com\u{a}"))))
(check-sat)
