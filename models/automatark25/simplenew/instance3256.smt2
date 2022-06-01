(declare-const X String)
; A-311ServerUser-Agent\u{3A}scn\u{2e}mystoretoolbar\u{2e}comWindowswww\.trackhits\.ccHost\u{3a}
(assert (not (str.in_re X (str.to_re "A-311ServerUser-Agent:scn.mystoretoolbar.com\u{13}Windowswww.trackhits.ccHost:\u{a}"))))
(check-sat)
