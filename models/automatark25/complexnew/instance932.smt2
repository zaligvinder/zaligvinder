(declare-const X String)
; Subject\u{3a}reportGatorNavExcel
(assert (str.in_re X (str.to_re "Subject:reportGatorNavExcel\u{a}")))
; ^([0-1])*$
(assert (str.in_re X (re.++ (re.* (re.range "0" "1")) (str.to_re "\u{a}"))))
; RequestedLoggedtb\u{2E}freeprod\u{2E}comHWAESubject\u{3a}adserver\.warezclient\.com
(assert (not (str.in_re X (str.to_re "RequestedLoggedtb.freeprod.comHWAESubject:adserver.warezclient.com\u{a}"))))
(check-sat)
