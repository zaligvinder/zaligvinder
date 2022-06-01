(declare-const X String)
; Host\u{3a}\s+Agentbody=\u{25}21\u{25}21\u{25}21OptixSubject\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Agentbody=%21%21%21Optix\u{13}Subject:\u{a}")))))
; areKeyloggerver=www\u{2E}snap\u{2E}com
(assert (str.in_re X (str.to_re "areKeyloggerver=www.snap.com\u{a}")))
; RequestedLoggedtb\u{2E}freeprod\u{2E}comHWAESubject\u{3a}adserver\.warezclient\.com
(assert (str.in_re X (str.to_re "RequestedLoggedtb.freeprod.comHWAESubject:adserver.warezclient.com\u{a}")))
(check-sat)
