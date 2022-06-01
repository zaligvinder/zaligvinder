(declare-const X String)
; RequestedLoggedtb\u{2E}freeprod\u{2E}comHWAESubject\u{3a}adserver\.warezclient\.com
(assert (str.in_re X (str.to_re "RequestedLoggedtb.freeprod.comHWAESubject:adserver.warezclient.com\u{a}")))
(check-sat)
