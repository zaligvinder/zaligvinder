(declare-const X String)
; User-Agent\u{3A}\u{2F}rssMinutesansweras\u{2E}starware\u{2E}comFictionalHost\u{3A}Host\u{3A}
(assert (not (str.in_re X (str.to_re "User-Agent:/rssMinutesansweras.starware.comFictionalHost:Host:\u{a}"))))
(check-sat)
