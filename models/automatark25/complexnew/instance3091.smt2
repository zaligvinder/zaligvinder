(declare-const X String)
; /\x2elzh([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.lzh") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; www\x2eproventactics\x2ecom\s+
(assert (not (str.in.re X (re.++ (str.to.re "www.proventactics.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
; Host\x3A\d+Host\x3A.*communitytipHost\x3AGirafaClient
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.* re.allchar) (str.to.re "communitytipHost:GirafaClient\x13\x0a")))))
; www\x2Eonetoolbar\x2Ecomcommunity
(assert (not (str.in.re X (str.to.re "www.onetoolbar.comcommunity\x0a"))))
(check-sat)
