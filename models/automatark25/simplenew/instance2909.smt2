(declare-const X String)
; /\u{2f}blackmuscats?\u{3f}\d/Ui
(assert (str.in_re X (re.++ (str.to_re "//blackmuscat") (re.opt (str.to_re "s")) (str.to_re "?") (re.range "0" "9") (str.to_re "/Ui\u{a}"))))
(check-sat)
