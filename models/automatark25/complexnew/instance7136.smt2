(declare-const X String)
; /\x2ehtc([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.htc") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; ^\d{3,3}\.\d{0,2}$|^E\d{3,3}\.\d{0,2}$
(assert (not (str.in.re X (re.union (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 0 2) (re.range "0" "9"))) (re.++ (str.to.re "E") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 0 2) (re.range "0" "9")) (str.to.re "\x0a"))))))
; BasicPointsHost\x3Anews
(assert (str.in.re X (str.to.re "BasicPointsHost:news\x0a")))
(check-sat)
