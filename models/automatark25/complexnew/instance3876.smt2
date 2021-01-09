(declare-const X String)
; (Mo(n(day)?)?|Tu(e(sday)?)?|We(d(nesday)?)?|Th(u(rsday)?)?|Fr(i(day)?)?|Sa(t(urday)?)?|Su(n(day)?)?)
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "Mo") (re.opt (re.++ (str.to.re "n") (re.opt (str.to.re "day"))))) (re.++ (str.to.re "Tu") (re.opt (re.++ (str.to.re "e") (re.opt (str.to.re "sday"))))) (re.++ (str.to.re "We") (re.opt (re.++ (str.to.re "d") (re.opt (str.to.re "nesday"))))) (re.++ (str.to.re "Th") (re.opt (re.++ (str.to.re "u") (re.opt (str.to.re "rsday"))))) (re.++ (str.to.re "Fr") (re.opt (re.++ (str.to.re "i") (re.opt (str.to.re "day"))))) (re.++ (str.to.re "Sa") (re.opt (re.++ (str.to.re "t") (re.opt (str.to.re "urday"))))) (re.++ (str.to.re "Su") (re.opt (re.++ (str.to.re "n") (re.opt (str.to.re "day")))))) (str.to.re "\x0a")))))
; ixqshv\x2fqzccsMM_RECO\x2EEXE%3fwwwwp-includes\x2Ftheme\x2Ephp\x3F
(assert (not (str.in.re X (str.to.re "ixqshv/qzccsMM_RECO.EXE%3fwwwwp-includes/theme.php?\x0a"))))
; forum=From\x3acomTencentTravelerBackAtTaCkExplorer
(assert (str.in.re X (str.to.re "forum=From:comTencentTravelerBackAtTaCkExplorer\x0a")))
; Subject\x3A\d+media\x2Edxcdirect\x2Ecom\.smx\?PASSW=SAHHost\x3A
(assert (str.in.re X (re.++ (str.to.re "Subject:") (re.+ (re.range "0" "9")) (str.to.re "media.dxcdirect.com.smx?PASSW=SAHHost:\x0a"))))
(check-sat)
