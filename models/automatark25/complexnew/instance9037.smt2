(declare-const X String)
; DownloadDmInf\x5EinfoSimpsonUser-Agent\x3AClient
(assert (not (str.in.re X (str.to.re "DownloadDmInf^infoSimpsonUser-Agent:Client\x0a"))))
; action\x2EpioletHost\x3AIP-www\x2Einternetadvertisingcompany\x2Ebiz
(assert (not (str.in.re X (str.to.re "action.pioletHost:IP-www.internetadvertisingcompany.biz\x0a"))))
; (LT-?)?([0-9]{9}|[0-9]{12})
(assert (str.in.re X (re.++ (re.opt (re.++ (str.to.re "LT") (re.opt (str.to.re "-")))) (re.union ((_ re.loop 9 9) (re.range "0" "9")) ((_ re.loop 12 12) (re.range "0" "9"))) (str.to.re "\x0a"))))
; EFError.*Host\x3A\swww\x2emalware-stopper\x2ecom
(assert (not (str.in.re X (re.++ (str.to.re "EFError") (re.* re.allchar) (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.malware-stopper.com\x0a")))))
; (@\s*".*?")|("([^"\\]|\\.)*?")
(assert (not (str.in.re X (re.union (re.++ (str.to.re "@") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x22") (re.* re.allchar) (str.to.re "\x22")) (re.++ (str.to.re "\x0a\x22") (re.* (re.union (re.++ (str.to.re "\x5c") re.allchar) (str.to.re "\x22") (str.to.re "\x5c"))) (str.to.re "\x22"))))))
(check-sat)
