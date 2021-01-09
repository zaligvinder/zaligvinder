(declare-const X String)
; Host\x3a\s+www\s+Host\x3AHost\x3AIPAsynchaveAdToolszopabora\x2EinfoHost\x3a
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Host:IPAsynchaveAdToolszopabora.infoHost:\x0a")))))
; /\x2eani([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.ani") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; iebar\s+Referer\x3aThis
(assert (str.in.re X (re.++ (str.to.re "iebar") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Referer:This\x0a"))))
; www\x2Erichfind\x2Ecom\d+UI2
(assert (str.in.re X (re.++ (str.to.re "www.richfind.com") (re.+ (re.range "0" "9")) (str.to.re "UI2\x0a"))))
(check-sat)
