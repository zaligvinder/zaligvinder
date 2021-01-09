(declare-const X String)
; Host\x3A\d+\.compress.*sidebar\.activeshopper\.com
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re ".compress") (re.* re.allchar) (str.to.re "sidebar.activeshopper.com\x0a"))))
; /z\d{1,3}/Pi
(assert (not (str.in.re X (re.++ (str.to.re "/z") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "/Pi\x0a")))))
; /filename\=[a-z0-9]{24}\.jar/H
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") ((_ re.loop 24 24) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".jar/H\x0a")))))
(check-sat)
