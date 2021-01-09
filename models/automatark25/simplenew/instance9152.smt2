(declare-const X String)
; SoftActivity\s+User-Agent\x3A.*LogsHost\x3AHost\x3AX-Mailer\x3a
(assert (str.in.re X (re.++ (str.to.re "SoftActivity\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "LogsHost:Host:X-Mailer:\x13\x0a"))))
(check-sat)
