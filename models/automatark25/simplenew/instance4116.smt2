(declare-const X String)
; <link href="../Common/Styles/iLienStyle.css" type="text/css" rel="stylesheet" />
(assert (not (str.in.re X (re.++ (str.to.re "<link href=\x22") re.allchar re.allchar (str.to.re "/Common/Styles/iLienStyle") re.allchar (str.to.re "css\x22 type=\x22text/css\x22 rel=\x22stylesheet\x22 />\x0a")))))
(check-sat)
