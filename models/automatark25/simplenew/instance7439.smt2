(declare-const X String)
; media\u{2E}dxcdirect\u{2E}com
(assert (str.in_re X (str.to_re "media.dxcdirect.com\u{a}")))
(check-sat)
