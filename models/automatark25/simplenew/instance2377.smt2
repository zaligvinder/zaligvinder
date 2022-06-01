(declare-const X String)
; hirmvtg\u{2f}ggqh\.kqhSurveillanceHost\u{3A}
(assert (str.in_re X (str.to_re "hirmvtg/ggqh.kqh\u{1b}Surveillance\u{13}Host:\u{a}")))
(check-sat)
