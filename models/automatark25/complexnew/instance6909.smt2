(declare-const X String)
; From\x3A.*Host\x3A\s+Downloadfowclxccdxn\x2fuxwn\.ddy
(assert (not (str.in.re X (re.++ (str.to.re "From:") (re.* re.allchar) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Downloadfowclxccdxn/uxwn.ddy\x0a")))))
; cdpView.*protocol.*\x2Fs\x28robert\x40blackcastlesoft\x2Ecom\x29
(assert (not (str.in.re X (re.++ (str.to.re "cdpView") (re.* re.allchar) (str.to.re "protocol") (re.* re.allchar) (str.to.re "/s(robert@blackcastlesoft.com)\x0a")))))
; subject\x3A.*Login\s+adfsgecoiwnf
(assert (not (str.in.re X (re.++ (str.to.re "subject:") (re.* re.allchar) (str.to.re "Login") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "adfsgecoiwnf\x1b\x0a")))))
; www\x2Emirarsearch\x2Ecom
(assert (not (str.in.re X (str.to.re "www.mirarsearch.com\x0a"))))
(check-sat)
