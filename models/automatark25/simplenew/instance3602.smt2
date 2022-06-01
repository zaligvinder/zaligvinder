(declare-const X String)
; /skillName\u{3D}\u{7B}\u{28}\u{23}/Ui
(assert (not (str.in_re X (str.to_re "/skillName={(#/Ui\u{a}"))))
(check-sat)
