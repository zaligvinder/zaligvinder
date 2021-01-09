(declare-const X String)
; www\x2Ealfacleaner\x2EcomHost\x3aLogs
(assert (str.in.re X (str.to.re "www.alfacleaner.comHost:Logs\x0a")))
; Port\x2E[^\n\r]*007\d+Logsdl\x2Eweb-nexus\x2Enet
(assert (str.in.re X (re.++ (str.to.re "Port.") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "007") (re.+ (re.range "0" "9")) (str.to.re "Logsdl.web-nexus.net\x0a"))))
; (Mo(n(day)?)?|Tu(e(sday)?)?|We(d(nesday)?)?|Th(u(rsday)?)?|Fr(i(day)?)?|Sa(t(urday)?)?|Su(n(day)?)?)
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "Mo") (re.opt (re.++ (str.to.re "n") (re.opt (str.to.re "day"))))) (re.++ (str.to.re "Tu") (re.opt (re.++ (str.to.re "e") (re.opt (str.to.re "sday"))))) (re.++ (str.to.re "We") (re.opt (re.++ (str.to.re "d") (re.opt (str.to.re "nesday"))))) (re.++ (str.to.re "Th") (re.opt (re.++ (str.to.re "u") (re.opt (str.to.re "rsday"))))) (re.++ (str.to.re "Fr") (re.opt (re.++ (str.to.re "i") (re.opt (str.to.re "day"))))) (re.++ (str.to.re "Sa") (re.opt (re.++ (str.to.re "t") (re.opt (str.to.re "urday"))))) (re.++ (str.to.re "Su") (re.opt (re.++ (str.to.re "n") (re.opt (str.to.re "day")))))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2enab/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".nab/i\x0a")))))
; \w{5,255}
(assert (str.in.re X (re.++ ((_ re.loop 5 255) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a"))))
(check-sat)
