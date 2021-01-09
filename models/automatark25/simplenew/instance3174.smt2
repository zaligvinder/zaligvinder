(declare-const X String)
; log\=\x7BIP\x3AReferer\x3Awww\x2Emirarsearch\x2Ecom\x2Etxte2give\.comSpywareStrikeConnectedIPSubject\x3A
(assert (str.in.re X (str.to.re "log={IP:Referer:www.mirarsearch.com.txte2give.comSpywareStrikeConnectedIPSubject:\x0a")))
(check-sat)
