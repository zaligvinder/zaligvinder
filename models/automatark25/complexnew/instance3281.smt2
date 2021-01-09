(declare-const X String)
; replace(MobileNo,' ',''),'^(\+44|0044|0)(7)[4-9][0-9]{8}$'
(assert (str.in.re X (re.++ (str.to.re "replaceMobileNo,' ','','") (re.union (str.to.re "+44") (str.to.re "0044") (str.to.re "0")) (str.to.re "7") (re.range "4" "9") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "'\x0a"))))
; /\x2Ermf([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.rmf") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; Host\x3Ahirmvtg\x2fggqh\.kqhverA-Spy
(assert (str.in.re X (str.to.re "Host:hirmvtg/ggqh.kqh\x1bverA-Spy\x0a")))
; Referer\x3Awww\x2Eccnnlc\x2Ecom\x04\x00User-Agent\x3A\x22The
(assert (str.in.re X (str.to.re "Referer:www.ccnnlc.com\x13\x04\x00User-Agent:\x22The\x0a")))
(check-sat)
