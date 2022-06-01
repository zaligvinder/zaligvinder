(declare-const X String)
; ^(LV-)[0-9]{4}$
(assert (str.in_re X (re.++ (str.to_re "LV-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}"))))
; hirmvtg\u{2f}ggqh\.kqhSurveillanceHost\u{3A}
(assert (not (str.in_re X (str.to_re "hirmvtg/ggqh.kqh\u{1b}Surveillance\u{13}Host:\u{a}"))))
(check-sat)
