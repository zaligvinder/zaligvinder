(declare-const X String)
; ^(LV-)[0-9]{4}$
(assert (str.in.re X (re.++ (str.to.re "LV-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; hirmvtg\x2fggqh\.kqhSurveillanceHost\x3A
(assert (not (str.in.re X (str.to.re "hirmvtg/ggqh.kqh\x1bSurveillance\x13Host:\x0a"))))
(check-sat)
