(declare-const X String)
; 3AUser-Agent\u{3A}FROM\u{3A}Remoteqlqqlbojvii\u{2f}gtHost\u{3A}
(assert (not (str.in_re X (str.to_re "3AUser-Agent:FROM:Remoteqlqqlbojvii/gtHost:\u{a}"))))
(check-sat)
