(declare-const X String)
; \+353\(0\)\s\d\s\d{3}\s\d{4}
(assert (not (str.in.re X (re.++ (str.to.re "+353(0)") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.range "0" "9") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; /filename\=\d+\.swf/H
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.+ (re.range "0" "9")) (str.to.re ".swf/H\x0a")))))
(check-sat)
