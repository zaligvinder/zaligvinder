(declare-const X String)
; /^\u{2f}\d{3}\u{2f}\d{3}\u{2e}html$/U
(assert (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "/") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ".html/U\u{a}"))))
; ShadowNet\dsearchreslt\sTROJAN-Host\u{3A}YWRtaW46cGFzc3dvcmQ
(assert (str.in_re X (re.++ (str.to_re "ShadowNet") (re.range "0" "9") (str.to_re "searchreslt") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "TROJAN-Host:YWRtaW46cGFzc3dvcmQ\u{a}"))))
; upgrade\u{2E}qsrch\u{2E}info[^\n\r]*dcww\u{2E}dmcast\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "upgrade.qsrch.info") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "dcww.dmcast.com\u{a}")))))
; action\u{2E}pioletHost\u{3A}IP-www\u{2E}internetadvertisingcompany\u{2E}biz
(assert (not (str.in_re X (str.to_re "action.pioletHost:IP-www.internetadvertisingcompany.biz\u{a}"))))
(check-sat)
