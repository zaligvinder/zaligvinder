(declare-const X String)
; PortweatherX-Mailer\u{3a}User-Agent\u{3A}Toolbar
(assert (not (str.in_re X (str.to_re "PortweatherX-Mailer:\u{13}User-Agent:Toolbar\u{a}"))))
; (^[1-9]$)|(^10$)
(assert (str.in_re X (re.union (re.range "1" "9") (str.to_re "10\u{a}"))))
; =(?m)^(LogName=(Security).*)\n(SourceName=.*)\n(EventCode=.*)\n(EventType=.*)\n(Type=(Success Audit|Information).*)\n(ComputerName=(HOSTNAME1|HOSTNAME2|HOSTNAME3).*)\n
(assert (str.in_re X (re.++ (str.to_re "=\u{a}\u{a}\u{a}\u{a}\u{a}\u{a}\u{a}LogName=Security") (re.* re.allchar) (str.to_re "SourceName=") (re.* re.allchar) (str.to_re "EventCode=") (re.* re.allchar) (str.to_re "EventType=") (re.* re.allchar) (str.to_re "Type=") (re.union (str.to_re "Success Audit") (str.to_re "Information")) (re.* re.allchar) (str.to_re "ComputerName=") (re.* re.allchar) (str.to_re "HOSTNAME") (re.union (str.to_re "1") (str.to_re "2") (str.to_re "3")))))
(check-sat)
