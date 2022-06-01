(declare-const X String)
; \/cgi-bin\/PopupV\s+insert.*Host\u{3a}HELOHourssurvey\.asp\?nUserId=
(assert (not (str.in_re X (re.++ (str.to_re "/cgi-bin/PopupV") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "insert") (re.* re.allchar) (str.to_re "Host:HELOHourssurvey.asp?nUserId=\u{a}")))))
; /\u{2e}gif([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.gif") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
(check-sat)
