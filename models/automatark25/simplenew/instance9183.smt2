(declare-const X String)
; /\x2fblackmuscats?\x3f\d/Ui
(assert (str.in.re X (re.++ (str.to.re "//blackmuscat") (re.opt (str.to.re "s")) (str.to.re "?") (re.range "0" "9") (str.to.re "/Ui\x0a"))))
(check-sat)
