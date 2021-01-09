(declare-const X String)
; IDENTIFY666User-Agent\x3A\x5BStaticSend=Host\x3Awww\.iggsey\.com
(assert (str.in.re X (str.to.re "IDENTIFY666User-Agent:[StaticSend=Host:www.iggsey.com\x0a")))
(check-sat)
