(declare-const X String)
; =(?m)^(LogName=(Security).*)\n(SourceName=.*)\n(EventCode=.*)\n(EventType=.*)\n(Type=(Success Audit|Information).*)\n(ComputerName=(HOSTNAME1|HOSTNAME2|HOSTNAME3).*)\n
(assert (str.in.re X (re.++ (str.to.re "=\x0a\x0a\x0a\x0a\x0a\x0a\x0aLogName=Security") (re.* re.allchar) (str.to.re "SourceName=") (re.* re.allchar) (str.to.re "EventCode=") (re.* re.allchar) (str.to.re "EventType=") (re.* re.allchar) (str.to.re "Type=") (re.union (str.to.re "Success Audit") (str.to.re "Information")) (re.* re.allchar) (str.to.re "ComputerName=") (re.* re.allchar) (str.to.re "HOSTNAME") (re.union (str.to.re "1") (str.to.re "2") (str.to.re "3")))))
; \d+\s*[.'-]\s*\d+\s*[\d+.m\"]*
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re ".") (str.to.re "'") (str.to.re "-")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.+ (re.range "0" "9")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.union (re.range "0" "9") (str.to.re "+") (str.to.re ".") (str.to.re "m") (str.to.re "\x22"))) (str.to.re "\x0a"))))
; logs\d+X-Mailer\x3a\d+url=enews\x2Eearthlink\x2Enet
(assert (str.in.re X (re.++ (str.to.re "logs") (re.+ (re.range "0" "9")) (str.to.re "X-Mailer:\x13") (re.+ (re.range "0" "9")) (str.to.re "url=enews.earthlink.net\x0a"))))
(check-sat)
