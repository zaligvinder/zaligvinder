(declare-const X String)
; /filename\=\d+\.swf/H
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.+ (re.range "0" "9")) (str.to_re ".swf/H\u{a}")))))
(check-sat)
