(declare-const X String)
; dll\u{3F}badurl\u{2E}grandstreetinteractive\u{2E}com
(assert (not (str.in_re X (str.to_re "dll?badurl.grandstreetinteractive.com\u{a}"))))
(check-sat)
