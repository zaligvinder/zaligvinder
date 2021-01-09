(declare-const X String)
; Subject\x3areportGatorNavExcel
(assert (str.in.re X (str.to.re "Subject:reportGatorNavExcel\x0a")))
; ^([0-1])*$
(assert (str.in.re X (re.++ (re.* (re.range "0" "1")) (str.to.re "\x0a"))))
; RequestedLoggedtb\x2Efreeprod\x2EcomHWAESubject\x3aadserver\.warezclient\.com
(assert (not (str.in.re X (str.to.re "RequestedLoggedtb.freeprod.comHWAESubject:adserver.warezclient.com\x0a"))))
(check-sat)
