(declare-const X String)
; /^\x2f\d{3}\x2f\d{3}\x2ehtml$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".html/U\x0a"))))
; ShadowNet\dsearchreslt\sTROJAN-Host\x3AYWRtaW46cGFzc3dvcmQ
(assert (str.in.re X (re.++ (str.to.re "ShadowNet") (re.range "0" "9") (str.to.re "searchreslt") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "TROJAN-Host:YWRtaW46cGFzc3dvcmQ\x0a"))))
; upgrade\x2Eqsrch\x2Einfo[^\n\r]*dcww\x2Edmcast\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "upgrade.qsrch.info") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "dcww.dmcast.com\x0a")))))
; action\x2EpioletHost\x3AIP-www\x2Einternetadvertisingcompany\x2Ebiz
(assert (not (str.in.re X (str.to.re "action.pioletHost:IP-www.internetadvertisingcompany.biz\x0a"))))
(check-sat)
