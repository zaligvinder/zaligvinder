(declare-const X String)
; Host\u{3A}\s+gpstool\u{2e}globaladserver\u{2e}comfriend_nickname=CIA-Notify-Tezt
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "gpstool.globaladserver.comfriend_nickname=CIA-Notify-Tezt\u{a}"))))
; ApofisAgentFunWebProductsUser-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "ApofisAgentFunWebProductsUser-Agent:\u{a}"))))
; ^([a-zA-Z ';-]+)$
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re " ") (str.to_re "'") (str.to_re ";") (str.to_re "-"))) (str.to_re "\u{a}"))))
; ShadowNet\dsearchreslt\sTROJAN-Host\u{3A}YWRtaW46cGFzc3dvcmQ
(assert (str.in_re X (re.++ (str.to_re "ShadowNet") (re.range "0" "9") (str.to_re "searchreslt") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "TROJAN-Host:YWRtaW46cGFzc3dvcmQ\u{a}"))))
; Host\u{3A}cdpnode=FILESIZE\u{3E}
(assert (not (str.in_re X (str.to_re "Host:cdpnode=FILESIZE>\u{13}\u{a}"))))
(check-sat)
