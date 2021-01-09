(declare-const X String)
; RequestedLoggedtb\x2Efreeprod\x2EcomHWAESubject\x3aadserver\.warezclient\.com
(assert (str.in.re X (str.to.re "RequestedLoggedtb.freeprod.comHWAESubject:adserver.warezclient.com\x0a")))
(check-sat)
