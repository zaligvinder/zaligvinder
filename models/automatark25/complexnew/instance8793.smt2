(declare-const X String)
; /filename=[^\n]*\x2esmil/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".smil/i\x0a")))))
; Keylogger[^\n\r]*dll\x3F\w+www2\x2einstantbuzz\x2ecom\s+Online100013Agentsvr\x5E\x5EMerlinHost\x3AHost\x3Aport
(assert (not (str.in.re X (re.++ (str.to.re "Keylogger") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "dll?") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "www2.instantbuzz.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Online100013Agentsvr^^Merlin\x13Host:Host:port\x0a")))))
; ^[a-z0-9][a-z0-9_\.-]{0,}[a-z0-9]@[a-z0-9][a-z0-9_\.-]{0,}[a-z0-9][\.][a-z0-9]{2,4}$
(assert (not (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "0" "9")) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "_") (str.to.re ".") (str.to.re "-"))) (re.union (re.range "a" "z") (re.range "0" "9")) (str.to.re "@") (re.union (re.range "a" "z") (re.range "0" "9")) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "_") (str.to.re ".") (str.to.re "-"))) (re.union (re.range "a" "z") (re.range "0" "9")) (str.to.re ".") ((_ re.loop 2 4) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "\x0a")))))
(check-sat)
