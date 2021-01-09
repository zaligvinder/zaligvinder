(declare-const X String)
; Iterenetbadurl\x2Egrandstreetinteractive\x2Ecom
(assert (str.in.re X (str.to.re "Iterenetbadurl.grandstreetinteractive.com\x0a")))
; ^[1-9]\d$
(assert (str.in.re X (re.++ (re.range "1" "9") (re.range "0" "9") (str.to.re "\x0a"))))
; Version\s+User-Agent\x3Abindmqnqgijmng\x2foj
(assert (not (str.in.re X (re.++ (str.to.re "Version") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:bindmqnqgijmng/oj\x0a")))))
(check-sat)
