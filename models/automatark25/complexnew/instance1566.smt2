(declare-const X String)
; FTP.*www\x2Ewordiq\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "FTP") (re.* re.allchar) (str.to.re "www.wordiq.com\x1b\x0a"))))
; RequestedLoggedtb\x2Efreeprod\x2EcomHWAESubject\x3aadserver\.warezclient\.com
(assert (not (str.in.re X (str.to.re "RequestedLoggedtb.freeprod.comHWAESubject:adserver.warezclient.com\x0a"))))
(check-sat)
