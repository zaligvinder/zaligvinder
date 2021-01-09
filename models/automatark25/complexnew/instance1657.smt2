(declare-const X String)
; \\s\\d{2}[-]\\w{3}-\\d{4}
(assert (str.in.re X (re.++ (str.to.re "\x5cs\x5c") ((_ re.loop 2 2) (str.to.re "d")) (str.to.re "-\x5c") ((_ re.loop 3 3) (str.to.re "w")) (str.to.re "-\x5c") ((_ re.loop 4 4) (str.to.re "d")) (str.to.re "\x0a"))))
; 3ASoftwarephpinfoSpy\x2EnbdMailerX-Mailer\x3A195\.225\.Subject\x3a
(assert (not (str.in.re X (str.to.re "3ASoftwarephpinfoSpy.nbdMailerX-Mailer:\x13195.225.Subject:\x0a"))))
; SpywareinformationToolBarX-Mailer\x3aUser-Agent\x3AMM_RECO\x2EEXE
(assert (not (str.in.re X (str.to.re "SpywareinformationToolBarX-Mailer:\x13User-Agent:MM_RECO.EXE\x0a"))))
; ^((19[0-9][0-9])|(20[0-1][0-5]))\-((0?[1-9])|(1[0-2]))\-((0?[1-9])|([1-2][0-9])|(3[0-1]))$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "19") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "20") (re.range "0" "1") (re.range "0" "5"))) (str.to.re "-") (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "-") (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.range "1" "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "1"))) (str.to.re "\x0a"))))
; Host\x3AUser-Agent\x3aHost\x3APortScaner
(assert (not (str.in.re X (str.to.re "Host:User-Agent:Host:PortScaner\x0a"))))
(check-sat)
