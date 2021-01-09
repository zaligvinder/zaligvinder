(declare-const X String)
; Version\s+User-Agent\x3Abindmqnqgijmng\x2foj
(assert (str.in.re X (re.++ (str.to.re "Version") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:bindmqnqgijmng/oj\x0a"))))
; ^DOMAIN\\\w+$
(assert (str.in.re X (re.++ (str.to.re "DOMAIN\x5c") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a"))))
(check-sat)
