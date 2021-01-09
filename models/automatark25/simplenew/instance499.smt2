(declare-const X String)
; =(?m)^(LogName=(Security).*)\n(SourceName=.*)\n(EventCode=.*)\n(EventType=.*)\n(Type=(Success Audit|Information).*)\n(ComputerName=(HOSTNAME1|HOSTNAME2|HOSTNAME3).*)\n
(assert (not (str.in.re X (re.++ (str.to.re "=\x0a\x0a\x0a\x0a\x0a\x0a\x0aLogName=Security") (re.* re.allchar) (str.to.re "SourceName=") (re.* re.allchar) (str.to.re "EventCode=") (re.* re.allchar) (str.to.re "EventType=") (re.* re.allchar) (str.to.re "Type=") (re.union (str.to.re "Success Audit") (str.to.re "Information")) (re.* re.allchar) (str.to.re "ComputerName=") (re.* re.allchar) (str.to.re "HOSTNAME") (re.union (str.to.re "1") (str.to.re "2") (str.to.re "3"))))))
(check-sat)
