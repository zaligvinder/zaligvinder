(declare-const X String)
; media\u{2E}top-banners\u{2E}com
(assert (str.in_re X (str.to_re "media.top-banners.com\u{a}")))
(check-sat)
