(declare-const X String)
; subject\x3Anode=LoginNSIS_DOWNLOAD
(assert (not (str.in.re X (str.to.re "subject:node=LoginNSIS_DOWNLOAD\x0a"))))
; www\.trackhits\.cc\s+wwwHost\x3aRobertVersionspyblini\x2Eini
(assert (str.in.re X (re.++ (str.to.re "www.trackhits.cc") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "wwwHost:RobertVersionspyblini.ini\x0a"))))
(check-sat)
