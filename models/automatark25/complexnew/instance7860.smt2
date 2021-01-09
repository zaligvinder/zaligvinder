(declare-const X String)
; ^[A-Z]{3}(\s)?[0-9]{4}$
(assert (not (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; (\<\?php\s+.*?((\?\>)|$))
(assert (str.in.re X (re.++ (str.to.re "\x0a<?php") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* re.allchar) (str.to.re "?>"))))
; <link href="../Common/Styles/iLienStyle.css" type="text/css" rel="stylesheet" />
(assert (str.in.re X (re.++ (str.to.re "<link href=\x22") re.allchar re.allchar (str.to.re "/Common/Styles/iLienStyle") re.allchar (str.to.re "css\x22 type=\x22text/css\x22 rel=\x22stylesheet\x22 />\x0a"))))
(check-sat)
