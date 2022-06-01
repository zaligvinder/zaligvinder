(declare-const X String)
; \u{2F}images\u{2F}nocache\u{2F}tr\u{2F}gca\u{2F}m\.gif\?
(assert (str.in_re X (str.to_re "/images/nocache/tr/gca/m.gif?\u{a}")))
(check-sat)
