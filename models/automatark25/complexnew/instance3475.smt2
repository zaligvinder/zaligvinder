(declare-const X String)
; ^<\!\-\-(.*)+(\/){0,1}\-\->$
(assert (not (str.in.re X (re.++ (str.to.re "<!--") (re.+ (re.* re.allchar)) (re.opt (str.to.re "/")) (str.to.re "-->\x0a")))))
; ^(#){1}([a-fA-F0-9]){6}$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (str.to.re "#")) ((_ re.loop 6 6) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (str.to.re "\x0a"))))
; ^((([+])?[1])?\s{0,1}\d{3}\s{0,1}\d{3}\s{0,1}\d{4})$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.opt (re.++ (re.opt (str.to.re "+")) (str.to.re "1"))) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9"))))))
; <link href="../Common/Styles/iLienStyle.css" type="text/css" rel="stylesheet" />
(assert (str.in.re X (re.++ (str.to.re "<link href=\x22") re.allchar re.allchar (str.to.re "/Common/Styles/iLienStyle") re.allchar (str.to.re "css\x22 type=\x22text/css\x22 rel=\x22stylesheet\x22 />\x0a"))))
; /^\x2f[0-9a-z]{30}$/Umi
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 30 30) (re.union (re.range "0" "9") (re.range "a" "z"))) (str.to.re "/Umi\x0a"))))
(check-sat)
