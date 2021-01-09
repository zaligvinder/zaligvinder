(declare-const X String)
; ^[0-9]{4}((0[1-9])|(1[0-2]))$
(assert (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "\x0a"))))
; HXLogOnly\w+areSubject\x3a\swww\.fast-finder\.comawbeta\.net-nucleus\.com
(assert (str.in.re X (re.++ (str.to.re "HXLogOnly") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "areSubject:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.fast-finder.comawbeta.net-nucleus.com\x0a"))))
; ^[A-Z][a-z]+(tz)?(man|berg)$
(assert (not (str.in.re X (re.++ (re.range "A" "Z") (re.+ (re.range "a" "z")) (re.opt (str.to.re "tz")) (re.union (str.to.re "man") (str.to.re "berg")) (str.to.re "\x0a")))))
; \.fcgi[^\n\r]*Host\x3A\s\x5D\x2520\x5BPort_NETObserveTM_SEARCH3
(assert (not (str.in.re X (re.++ (str.to.re ".fcgi") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "]%20[Port_NETObserveTM_SEARCH3\x0a")))))
; \x2Fpagead\x2Fads\?waitingisDownload
(assert (str.in.re X (str.to.re "/pagead/ads?waitingisDownload\x0a")))
(check-sat)
