(declare-const X String)
; /filename=[^\n]*\x2eavi/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".avi/i\x0a")))))
; upgrade\x2Eqsrch\x2Einfo[^\n\r]*dcww\x2Edmcast\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "upgrade.qsrch.info") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "dcww.dmcast.com\x0a")))))
; /^Content-Type\x3a[\x20\x09]+application\/octet-stream/smiH
(assert (str.in.re X (re.++ (str.to.re "/Content-Type:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09"))) (str.to.re "application/octet-stream/smiH\x0a"))))
; ^([0-1]?\d|2[0-3]):([0-5]\d)$
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (re.range "0" "1")) (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re ":\x0a") (re.range "0" "5") (re.range "0" "9"))))
; User-Agent\x3A\w+Minutes\d+www\x2Eeblocs\x2EcomHost\x3ARunnerHost\x3a\x2Ehtmldll\x3F
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Minutes") (re.+ (re.range "0" "9")) (str.to.re "www.eblocs.com\x1bHost:RunnerHost:.htmldll?\x0a")))))
(check-sat)
