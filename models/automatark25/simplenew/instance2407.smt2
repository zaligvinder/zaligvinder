(declare-const X String)
; trustyfiles\u{2E}comBlade\u{23}\u{23}\u{23}\u{23}\.smx\?
(assert (not (str.in_re X (str.to_re "trustyfiles.comBlade####.smx?\u{a}"))))
(check-sat)
