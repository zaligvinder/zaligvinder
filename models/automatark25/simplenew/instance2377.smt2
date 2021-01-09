(declare-const X String)
; hirmvtg\x2fggqh\.kqhSurveillanceHost\x3A
(assert (str.in.re X (str.to.re "hirmvtg/ggqh.kqh\x1bSurveillance\x13Host:\x0a")))
(check-sat)
