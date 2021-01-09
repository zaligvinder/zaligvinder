(declare-const X String)
; ^[1-9][0-9][0-9][0-9]$
(assert (str.in.re X (re.++ (re.range "1" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (str.to.re "\x0a"))))
; Toolbar[^\n\r]*User-Agent\x3A\w+Host\x3A.*toX-Mailer\x3aLogsmax-Cookie\x3aAppName
(assert (not (str.in.re X (re.++ (str.to.re "Toolbar") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:") (re.* re.allchar) (str.to.re "toX-Mailer:\x13Logsmax-Cookie:AppName\x0a")))))
; EIcdpnode=reportUID\x2FServertoX-Mailer\x3a
(assert (str.in.re X (str.to.re "EIcdpnode=reportUID/ServertoX-Mailer:\x13\x0a")))
(check-sat)
