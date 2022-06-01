(declare-const X String)
; ZC-BridgeHost\u{3A}Subject\u{3a}as\u{2E}starware\u{2E}com
(assert (not (str.in_re X (str.to_re "ZC-BridgeHost:Subject:as.starware.com\u{a}"))))
(check-sat)
