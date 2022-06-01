(declare-const X String)
; <link href="../Common/Styles/iLienStyle.css" type="text/css" rel="stylesheet" />
(assert (not (str.in_re X (re.++ (str.to_re "<link href=\u{22}") re.allchar re.allchar (str.to_re "/Common/Styles/iLienStyle") re.allchar (str.to_re "css\u{22} type=\u{22}text/css\u{22} rel=\u{22}stylesheet\u{22} />\u{a}")))))
(check-sat)
