(declare-const X String)
; httphost[^\n\r]*www\x2Emaxifiles\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "httphost") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "www.maxifiles.com\x0a")))))
; /filename=[^\n]*\x2ecsv/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".csv/i\x0a"))))
(check-sat)
