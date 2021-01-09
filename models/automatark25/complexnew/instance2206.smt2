(declare-const X String)
; /^connected\x2e[^\x0D\x0A]*20\d\d[^\x0D\x0A]*ver\x3A\s+Legends\s2\x2e1/smi
(assert (not (str.in.re X (re.++ (str.to.re "/connected.") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "20") (re.range "0" "9") (re.range "0" "9") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "ver:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Legends") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "2.1/smi\x0a")))))
; User-Agent\x3a\soffers\x2Ebullseye-network\x2Ecom\d+FTPsearch\.dropspam\.com
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "offers.bullseye-network.com") (re.+ (re.range "0" "9")) (str.to.re "FTPsearch.dropspam.com\x0a"))))
; Keylogger[^\n\r]*dll\x3F\w+www2\x2einstantbuzz\x2ecom\s+Online100013Agentsvr\x5E\x5EMerlinHost\x3AHost\x3Aport
(assert (not (str.in.re X (re.++ (str.to.re "Keylogger") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "dll?") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "www2.instantbuzz.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Online100013Agentsvr^^Merlin\x13Host:Host:port\x0a")))))
(check-sat)
