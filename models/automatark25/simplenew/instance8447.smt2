(declare-const X String)
; Iterenetbadurl\u{2E}grandstreetinteractive\u{2E}com
(assert (not (str.in_re X (str.to_re "Iterenetbadurl.grandstreetinteractive.com\u{a}"))))
(check-sat)
