(declare-const X String)
; Host\u{3A}\s+\u{2F}toolbar\u{2F}ico\u{2F}\dencoderserverreport\<\u{2F}title\>
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/toolbar/ico/") (re.range "0" "9") (str.to_re "encoderserverreport</title>\u{a}"))))
; \/cgi-bin\/PopupV\s+insert.*Host\u{3a}HELOHourssurvey\.asp\?nUserId=
(assert (str.in_re X (re.++ (str.to_re "/cgi-bin/PopupV") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "insert") (re.* re.allchar) (str.to_re "Host:HELOHourssurvey.asp?nUserId=\u{a}"))))
(check-sat)
