(declare-const X String)
; HWPE[^\n\r]*Basic.*LOGsearches\x2Eworldtostart\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "HWPE") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Basic") (re.* re.allchar) (str.to.re "LOGsearches.worldtostart.com\x0a")))))
; /filename=[^\n]*\x2exlw/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xlw/i\x0a")))))
; Activityfilename=\x22StarLoggerDAWeb-Mail
(assert (not (str.in.re X (str.to.re "Activityfilename=\x22StarLoggerDAWeb-Mail\x0a"))))
(check-sat)
