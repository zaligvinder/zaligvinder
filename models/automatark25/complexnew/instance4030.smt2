(declare-const X String)
; Activityfilename=\x22StarLoggerDAWeb-Mail
(assert (str.in.re X (str.to.re "Activityfilename=\x22StarLoggerDAWeb-Mail\x0a")))
; ^http://\\.?video\\.google+\\.\\w{2,3}/videoplay\\?docid=[\\w-]{19}
(assert (str.in.re X (re.++ (str.to.re "http://\x5c") (re.opt re.allchar) (str.to.re "video\x5c") re.allchar (str.to.re "googl") (re.+ (str.to.re "e")) (str.to.re "\x5c") re.allchar (str.to.re "\x5c") ((_ re.loop 2 3) (str.to.re "w")) (str.to.re "/videoplay") (re.opt (str.to.re "\x5c")) (str.to.re "docid=") ((_ re.loop 19 19) (re.union (str.to.re "\x5c") (str.to.re "w") (str.to.re "-"))) (str.to.re "\x0a"))))
(check-sat)
