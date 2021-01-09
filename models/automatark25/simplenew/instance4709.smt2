(declare-const X String)
; /myversion\x7c(\d\x2e){3}\d\x0d\x0a/
(assert (str.in.re X (re.++ (str.to.re "/myversion|") ((_ re.loop 3 3) (re.++ (re.range "0" "9") (str.to.re "."))) (re.range "0" "9") (str.to.re "\x0d\x0a/\x0a"))))
(check-sat)
