(declare-const X String)
; ^([0-9A-Za-z@.]{1,255})$
(assert (str.in.re X (re.++ ((_ re.loop 1 255) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "@") (str.to.re "."))) (str.to.re "\x0a"))))
; <link href="../Common/Styles/iLienStyle.css" type="text/css" rel="stylesheet" />
(assert (str.in.re X (re.++ (str.to.re "<link href=\x22") re.allchar re.allchar (str.to.re "/Common/Styles/iLienStyle") re.allchar (str.to.re "css\x22 type=\x22text/css\x22 rel=\x22stylesheet\x22 />\x0a"))))
(check-sat)
