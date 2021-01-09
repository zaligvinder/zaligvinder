(declare-const X String)
; \x2Fezsb\s+hirmvtg\x2fggqh\.kqh\dRemotetoolsbar\x2Ekuaiso\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "/ezsb") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "hirmvtg/ggqh.kqh\x1b") (re.range "0" "9") (str.to.re "Remotetoolsbar.kuaiso.com\x0a")))))
; (Mo(n(day)?)?|Tu(e(sday)?)?|We(d(nesday)?)?|Th(u(rsday)?)?|Fr(i(day)?)?|Sa(t(urday)?)?|Su(n(day)?)?)
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "Mo") (re.opt (re.++ (str.to.re "n") (re.opt (str.to.re "day"))))) (re.++ (str.to.re "Tu") (re.opt (re.++ (str.to.re "e") (re.opt (str.to.re "sday"))))) (re.++ (str.to.re "We") (re.opt (re.++ (str.to.re "d") (re.opt (str.to.re "nesday"))))) (re.++ (str.to.re "Th") (re.opt (re.++ (str.to.re "u") (re.opt (str.to.re "rsday"))))) (re.++ (str.to.re "Fr") (re.opt (re.++ (str.to.re "i") (re.opt (str.to.re "day"))))) (re.++ (str.to.re "Sa") (re.opt (re.++ (str.to.re "t") (re.opt (str.to.re "urday"))))) (re.++ (str.to.re "Su") (re.opt (re.++ (str.to.re "n") (re.opt (str.to.re "day")))))) (str.to.re "\x0a"))))
(check-sat)
