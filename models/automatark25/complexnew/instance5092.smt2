(declare-const X String)
; ^([-]?[0-9])$|^([-]?[1][0-2])$
(assert (str.in.re X (re.union (re.++ (re.opt (str.to.re "-")) (re.range "0" "9")) (re.++ (str.to.re "\x0a") (re.opt (str.to.re "-")) (str.to.re "1") (re.range "0" "2")))))
; /^Content-Type\x3a[\x20\x09]+application\/octet-stream/smiH
(assert (not (str.in.re X (re.++ (str.to.re "/Content-Type:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09"))) (str.to.re "application/octet-stream/smiH\x0a")))))
; Host\x3Aas\x2Estarware\x2Ecom\x2Fdp\x2Fsearch\?x=
(assert (not (str.in.re X (str.to.re "Host:as.starware.com/dp/search?x=\x0a"))))
; zmnjgmomgbdz\x2fzzmw\.gzt.*www\x2Ealtnet\x2Ecom.*User-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "zmnjgmomgbdz/zzmw.gzt") (re.* re.allchar) (str.to.re "www.altnet.com\x1b") (re.* re.allchar) (str.to.re "User-Agent:\x0a")))))
(check-sat)
