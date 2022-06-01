(declare-const X String)
; corep\u{2E}dmcast\u{2E}com\s+FunWebProducts\w+searchreslt\u{7D}\u{7B}Sysuptime\u{3A}Subject\u{3A}HANDY
(assert (str.in_re X (re.++ (str.to_re "corep.dmcast.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "FunWebProducts") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "searchreslt}{Sysuptime:Subject:HANDY\u{a}"))))
; Cookie\u{3a}.*Host\u{3A}.*ldap\u{3A}\u{2F}\u{2F}
(assert (str.in_re X (re.++ (str.to_re "Cookie:") (re.* re.allchar) (str.to_re "Host:") (re.* re.allchar) (str.to_re "ldap://\u{a}"))))
; http\s+Host\u{3A}[^\n\r]*WinInet3Azopabora\u{2E}info\u{2F}notifier\u{2F}User-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "http") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "WinInet3Azopabora.info/notifier/User-Agent:\u{a}")))))
; ^<\!\-\-(.*)+(\/){0,1}\-\->$
(assert (not (str.in_re X (re.++ (str.to_re "<!--") (re.+ (re.* re.allchar)) (re.opt (str.to_re "/")) (str.to_re "-->\u{a}")))))
(check-sat)
