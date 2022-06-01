(declare-const X String)
; subject\u{3A}node=LoginNSIS_DOWNLOAD
(assert (not (str.in_re X (str.to_re "subject:node=LoginNSIS_DOWNLOAD\u{a}"))))
; www\.trackhits\.cc\s+wwwHost\u{3a}RobertVersionspyblini\u{2E}ini
(assert (str.in_re X (re.++ (str.to_re "www.trackhits.cc") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "wwwHost:RobertVersionspyblini.ini\u{a}"))))
(check-sat)
