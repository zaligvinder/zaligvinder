(declare-const X String)
; corep\x2Edmcast\x2Ecom\s+FunWebProducts\w+searchreslt\x7D\x7BSysuptime\x3ASubject\x3AHANDY
(assert (str.in.re X (re.++ (str.to.re "corep.dmcast.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "FunWebProducts") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "searchreslt}{Sysuptime:Subject:HANDY\x0a"))))
; /User-Agent\x3a\x20[^\x0d\x0a]*?\x3bU\x3a[^\x0d\x0a]{1,68}\x3brv\x3a/H
(assert (str.in.re X (re.++ (str.to.re "/User-Agent: ") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re ";U:") ((_ re.loop 1 68) (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re ";rv:/H\x0a"))))
(check-sat)
