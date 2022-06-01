(declare-const X String)
; toetbuviaebe\u{2f}eqv\.bvvuplink\u{2E}co\u{2E}krwv=Host\u{3A}
(assert (str.in_re X (str.to_re "toetbuviaebe/eqv.bvvuplink.co.krwv=Host:\u{a}")))
; download\u{2E}eblocs\u{2E}comHost\u{3A}Referer\u{3A}
(assert (str.in_re X (str.to_re "download.eblocs.comHost:Referer:\u{a}")))
(check-sat)
