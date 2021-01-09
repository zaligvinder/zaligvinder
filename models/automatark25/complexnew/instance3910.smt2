(declare-const X String)
; Controlsource%3Dultrasearch136%26campaign%3Dsnap
(assert (str.in.re X (str.to.re "Controlsource%3Dultrasearch136%26campaign%3Dsnap\x0a")))
; www\x2EZSearchResults\x2Ecom\dBar.*sponsor2\.ucmore\.com
(assert (str.in.re X (re.++ (str.to.re "www.ZSearchResults.com\x13") (re.range "0" "9") (str.to.re "Bar") (re.* re.allchar) (str.to.re "sponsor2.ucmore.com\x0a"))))
; Serverulmxct\x2fmqoycWinSession\x2Fclient\x2F\x2APORT1\x2A
(assert (str.in.re X (str.to.re "Serverulmxct/mqoycWinSession/client/*PORT1*\x0a")))
; /filename=[^\n]*\x2edoc/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".doc/i\x0a"))))
(check-sat)
