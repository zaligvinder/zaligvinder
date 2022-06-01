(declare-const X String)
; Uin=encodernotification\u{2F}toolbar\u{2F}Host\u{3A}User-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "Uin=encodernotification\u{13}/toolbar/Host:User-Agent:\u{a}"))))
(check-sat)
