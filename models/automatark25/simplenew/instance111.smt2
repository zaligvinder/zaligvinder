(declare-const X String)
; InformationHost\u{3A}badurl\u{2E}grandstreetinteractive\u{2E}com
(assert (str.in_re X (str.to_re "InformationHost:badurl.grandstreetinteractive.com\u{a}")))
(check-sat)
