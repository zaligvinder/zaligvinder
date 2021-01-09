(declare-const X String)
; PortweatherX-Mailer\x3aUser-Agent\x3AToolbar
(assert (not (str.in.re X (str.to.re "PortweatherX-Mailer:\x13User-Agent:Toolbar\x0a"))))
; (^[1-9]$)|(^10$)
(assert (str.in.re X (re.union (re.range "1" "9") (str.to.re "10\x0a"))))
; =(?m)^(LogName=(Security).*)\n(SourceName=.*)\n(EventCode=.*)\n(EventType=.*)\n(Type=(Success Audit|Information).*)\n(ComputerName=(HOSTNAME1|HOSTNAME2|HOSTNAME3).*)\n
(assert (str.in.re X (re.++ (str.to.re "=\x0a\x0a\x0a\x0a\x0a\x0a\x0aLogName=Security") (re.* re.allchar) (str.to.re "SourceName=") (re.* re.allchar) (str.to.re "EventCode=") (re.* re.allchar) (str.to.re "EventType=") (re.* re.allchar) (str.to.re "Type=") (re.union (str.to.re "Success Audit") (str.to.re "Information")) (re.* re.allchar) (str.to.re "ComputerName=") (re.* re.allchar) (str.to.re "HOSTNAME") (re.union (str.to.re "1") (str.to.re "2") (str.to.re "3")))))
(check-sat)
