(declare-const X String)
; ^A([0-9]|10)$
(assert (not (str.in.re X (re.++ (str.to.re "A") (re.union (re.range "0" "9") (str.to.re "10")) (str.to.re "\x0a")))))
; Host\x3A.*www\x2e2-seek\x2ecom\x2fsearch
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "www.2-seek.com/search\x0a"))))
; User-Agent\x3A.*User-Agent\x3A.*spyblini\x2Einidata\.warezclient\.com
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "spyblini.inidata.warezclient.com\x0a"))))
(check-sat)
