(declare-const X String)
; /skillName\x3D\x7B\x28\x23/Ui
(assert (not (str.in.re X (str.to.re "/skillName={(#/Ui\x0a"))))
(check-sat)
