(declare-const X String)
; ^[1-9][0-9][0-9][0-9]$
(assert (str.in_re X (re.++ (re.range "1" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (str.to_re "\u{a}"))))
; Toolbar[^\n\r]*User-Agent\u{3A}\w+Host\u{3A}.*toX-Mailer\u{3a}Logsmax-Cookie\u{3a}AppName
(assert (not (str.in_re X (re.++ (str.to_re "Toolbar") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:") (re.* re.allchar) (str.to_re "toX-Mailer:\u{13}Logsmax-Cookie:AppName\u{a}")))))
; EIcdpnode=reportUID\u{2F}ServertoX-Mailer\u{3a}
(assert (str.in_re X (str.to_re "EIcdpnode=reportUID/ServertoX-Mailer:\u{13}\u{a}")))
(check-sat)
