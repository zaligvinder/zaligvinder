(declare-const X String)
; Keylogger[^\n\r]*dll\x3F\w+www2\x2einstantbuzz\x2ecom\s+Online100013Agentsvr\x5E\x5EMerlinHost\x3AHost\x3Aport
(assert (str.in.re X (re.++ (str.to.re "Keylogger") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "dll?") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "www2.instantbuzz.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Online100013Agentsvr^^Merlin\x13Host:Host:port\x0a"))))
; ^\d{5}$|^\d{5}-\d{4}$
(assert (str.in.re X (re.union ((_ re.loop 5 5) (re.range "0" "9")) (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
