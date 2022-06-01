(declare-const X String)
; corep\u{2E}dmcast\u{2E}comOwner\u{3A}
(assert (not (str.in_re X (str.to_re "corep.dmcast.comOwner:\u{a}"))))
(check-sat)
