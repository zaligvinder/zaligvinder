(declare-const X String)
; Ts2\x2F\s+insertinfoSnakeUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "Ts2/") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "insertinfoSnakeUser-Agent:\x0a"))))
; /\x2f\{\x23[^\x2f{}]+?\}(\.action)?\x2f?$/miU
(assert (not (str.in.re X (re.++ (str.to.re "//{#") (re.+ (re.union (str.to.re "/") (str.to.re "{") (str.to.re "}"))) (str.to.re "}") (re.opt (str.to.re ".action")) (re.opt (str.to.re "/")) (str.to.re "/miU\x0a")))))
; HWPE[^\n\r]*Basic.*LOGsearches\x2Eworldtostart\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "HWPE") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Basic") (re.* re.allchar) (str.to.re "LOGsearches.worldtostart.com\x0a"))))
; client\x2Ebaigoo\x2EcomUser\x3A
(assert (not (str.in.re X (str.to.re "client.baigoo.comUser:\x0a"))))
; \x23\x23\x23\x23Host\x3ASubject\x3Awww\x2Epcsentinelsoftware\x2EcomHost\x3AWeHost\x3awww\x2Ewowokay\x2Ecom/wowokaybar\x2Ephp
(assert (not (str.in.re X (str.to.re "####Host:Subject:www.pcsentinelsoftware.comHost:WeHost:www.wowokay.com/wowokaybar.php\x0a"))))
(check-sat)
