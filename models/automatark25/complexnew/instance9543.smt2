(declare-const X String)
; <(\/{0,1})img(.*?)(\/{0,1})\>
(assert (str.in_re X (re.++ (str.to_re "<") (re.opt (str.to_re "/")) (str.to_re "img") (re.* re.allchar) (re.opt (str.to_re "/")) (str.to_re ">\u{a}"))))
; Host\u{3A}.*c=[^\n\r]*KeyloggerHost\u{3A}www\.trackhits\.cc
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "c=") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "KeyloggerHost:www.trackhits.cc\u{a}"))))
(check-sat)
