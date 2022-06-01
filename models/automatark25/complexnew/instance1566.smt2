(declare-const X String)
; FTP.*www\u{2E}wordiq\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "FTP") (re.* re.allchar) (str.to_re "www.wordiq.com\u{1b}\u{a}"))))
; RequestedLoggedtb\u{2E}freeprod\u{2E}comHWAESubject\u{3a}adserver\.warezclient\.com
(assert (not (str.in_re X (str.to_re "RequestedLoggedtb.freeprod.comHWAESubject:adserver.warezclient.com\u{a}"))))
(check-sat)
