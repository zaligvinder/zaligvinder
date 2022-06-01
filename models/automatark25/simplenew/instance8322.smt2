(declare-const X String)
; Host\u{3A}hirmvtg\u{2f}ggqh\.kqhverA-Spy
(assert (not (str.in_re X (str.to_re "Host:hirmvtg/ggqh.kqh\u{1b}verA-Spy\u{a}"))))
(check-sat)
