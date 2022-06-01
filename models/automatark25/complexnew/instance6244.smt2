(declare-const X String)
; \.fcgi[^\n\r]*Host\u{3A}\s\u{5D}\u{25}20\u{5B}Port_NETObserveTM_SEARCH3
(assert (str.in_re X (re.++ (str.to_re ".fcgi") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "]%20[Port_NETObserveTM_SEARCH3\u{a}"))))
; User-Agent\u{3a}User-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "User-Agent:User-Agent:\u{a}"))))
; ^[a-zA-Z0-9\-\.]+\.([a-zA-Z]{2,3})$
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-") (str.to_re "."))) (str.to_re ".") ((_ re.loop 2 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "\u{a}"))))
; /[a-z]{2}_[a-z0-9]{8}\.mod/Ui
(assert (not (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 2 2) (re.range "a" "z")) (str.to_re "_") ((_ re.loop 8 8) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ".mod/Ui\u{a}")))))
(check-sat)
