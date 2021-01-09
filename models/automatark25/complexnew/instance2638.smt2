(declare-const X String)
; /\?java\=[0-9]{2,6}$/U
(assert (str.in.re X (re.++ (str.to.re "/?java=") ((_ re.loop 2 6) (re.range "0" "9")) (str.to.re "/U\x0a"))))
; Host\x3A.*User-Agent\x3a\sRequest
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "User-Agent:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Request\x0a")))))
; RequestedLoggedtb\x2Efreeprod\x2EcomHWAESubject\x3aadserver\.warezclient\.com
(assert (str.in.re X (str.to.re "RequestedLoggedtb.freeprod.comHWAESubject:adserver.warezclient.com\x0a")))
; ^(\d{5}-\d{4}|\d{5})$
(assert (not (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9"))) ((_ re.loop 5 5) (re.range "0" "9"))) (str.to.re "\x0a")))))
(check-sat)
