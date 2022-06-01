(declare-const X String)
; /\/flupdate\/\d\.html/iU
(assert (not (str.in_re X (re.++ (str.to_re "//flupdate/") (re.range "0" "9") (str.to_re ".html/iU\u{a}")))))
; Google\s+-~-GREATHost\u{3a}FILESIZE\u{3E}
(assert (not (str.in_re X (re.++ (str.to_re "Google") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "-~-GREATHost:FILESIZE>\u{13}\u{a}")))))
(check-sat)
