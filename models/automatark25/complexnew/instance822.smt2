(declare-const X String)
; Host\x3A.*Basic.*ProtoUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "Basic") (re.* re.allchar) (str.to.re "ProtoUser-Agent:\x0a"))))
; Server\s+www\x2Epeer2mail\x2Ecom.*Subject\x3AReferer\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Server") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.peer2mail.com") (re.* re.allchar) (str.to.re "Subject:Referer:\x0a")))))
; /\x2ereg([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.reg") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; www\x2Eweepee\x2Ecom\w+Owner\x3A\d+metaresults\.copernic\.com
(assert (str.in.re X (re.++ (str.to.re "www.weepee.com\x1b") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Owner:") (re.+ (re.range "0" "9")) (str.to.re "metaresults.copernic.com\x0a"))))
(check-sat)
