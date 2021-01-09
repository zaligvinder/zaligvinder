(declare-const X String)
; /filename\=\d+\.swf/H
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.+ (re.range "0" "9")) (str.to.re ".swf/H\x0a")))))
(check-sat)
