(declare-const X String)
; /[^\x20-\x7e\x0d\x0a]{4}/P
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 4 4) (re.union (re.range " " "~") (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "/P\x0a")))))
; ^([A-Za-z]{5})([0-9]{4})([A-Za-z]{1})$
(assert (not (str.in.re X (re.++ ((_ re.loop 5 5) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to.re "\x0a")))))
; awbeta\.net-nucleus\.com\d
(assert (str.in.re X (re.++ (str.to.re "awbeta.net-nucleus.com") (re.range "0" "9") (str.to.re "\x0a"))))
; Host\x3APG=SPEEDBARReferer\x3a
(assert (str.in.re X (str.to.re "Host:PG=SPEEDBARReferer:\x0a")))
(check-sat)
