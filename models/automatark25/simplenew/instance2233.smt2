(declare-const X String)
; 3Awww\x2eurlblaze\x2enetulmxct\x2fmqoycEFErrorHost\x3Ae2give\.com
(assert (not (str.in.re X (str.to.re "3Awww.urlblaze.netulmxct/mqoycEFErrorHost:e2give.com\x0a"))))
(check-sat)
