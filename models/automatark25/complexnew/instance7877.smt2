(declare-const X String)
; Host\x3A\s+ulmxct\x2fmqoycWinSession\x2Fclient\x2F\x2APORT1\x2A
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ulmxct/mqoycWinSession/client/*PORT1*\x0a"))))
; Remote\x3Cchat\x3EX-Mailer\x3awww\x2eproventactics\x2ecom
(assert (str.in.re X (str.to.re "Remote<chat>\x1bX-Mailer:\x13www.proventactics.com\x0a")))
; ^[a-z]
(assert (str.in.re X (re.++ (re.range "a" "z") (str.to.re "\x0a"))))
; \.cfg\s+xbqyosoe\x2fcpvmAdToolsconnectedNodes\/cgi-bin\/PopupV
(assert (str.in.re X (re.++ (str.to.re ".cfg") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "xbqyosoe/cpvmAdToolsconnectedNodes/cgi-bin/PopupV\x0a"))))
; Host\x3A\.exePass-OnHost\x3A\.exe\x2Ftoolbar\x2F
(assert (not (str.in.re X (str.to.re "Host:.exePass-OnHost:.exe/toolbar/\x0a"))))
(check-sat)
