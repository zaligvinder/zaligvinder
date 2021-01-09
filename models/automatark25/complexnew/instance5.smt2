(declare-const X String)
; Host\x3A\s+gpstool\x2eglobaladserver\x2ecomfriend_nickname=CIA-Notify-Tezt
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "gpstool.globaladserver.comfriend_nickname=CIA-Notify-Tezt\x0a"))))
; ApofisAgentFunWebProductsUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "ApofisAgentFunWebProductsUser-Agent:\x0a"))))
; ^([a-zA-Z ';-]+)$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re " ") (str.to.re "'") (str.to.re ";") (str.to.re "-"))) (str.to.re "\x0a"))))
; ShadowNet\dsearchreslt\sTROJAN-Host\x3AYWRtaW46cGFzc3dvcmQ
(assert (str.in.re X (re.++ (str.to.re "ShadowNet") (re.range "0" "9") (str.to.re "searchreslt") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "TROJAN-Host:YWRtaW46cGFzc3dvcmQ\x0a"))))
; Host\x3Acdpnode=FILESIZE\x3E
(assert (not (str.in.re X (str.to.re "Host:cdpnode=FILESIZE>\x13\x0a"))))
(check-sat)
