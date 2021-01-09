(declare-const X String)
; Host\x3A\w+installs\x2Eseekmo\x2Ecom\swww\.fast-finder\.com
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "installs.seekmo.com") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.fast-finder.com\x0a"))))
; name.matches("a-z")
(assert (str.in.re X (re.++ (str.to.re "name") re.allchar (str.to.re "matches\x22a-z\x22\x0a"))))
(check-sat)
