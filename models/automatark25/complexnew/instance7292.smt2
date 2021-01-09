(declare-const X String)
; /[^\x20-\x7e\x0d\x0a]{4}/P
(assert (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 4 4) (re.union (re.range " " "~") (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "/P\x0a"))))
; /filename\=\d+\.swf/H
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.+ (re.range "0" "9")) (str.to.re ".swf/H\x0a"))))
; ^04[0-9]{8}
(assert (not (str.in.re X (re.++ (str.to.re "04") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
