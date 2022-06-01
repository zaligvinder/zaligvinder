(declare-const X String)
; YWRtaW46YWRtaW4www\u{2E}e-finder\u{2E}ccNSIS_DOWNLOADHost\u{3A}
(assert (str.in_re X (str.to_re "YWRtaW46YWRtaW4www.e-finder.ccNSIS_DOWNLOADHost:\u{a}")))
; Ready\s+Toolbar\d+ServerLiteToolbar
(assert (not (str.in_re X (re.++ (str.to_re "Ready") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Toolbar") (re.+ (re.range "0" "9")) (str.to_re "ServerLiteToolbar\u{a}")))))
; \u{2A}PORT1\u{2A}WarezX-Mailer\u{3A}Snake\u{2F}bonzibuddy\u{2F}
(assert (not (str.in_re X (str.to_re "*PORT1*WarezX-Mailer:\u{13}Snake/bonzibuddy/\u{a}"))))
(check-sat)
