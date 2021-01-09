(declare-const X String)
; Host\x3AtoUser-Agent\x3AClientsConnected-
(assert (not (str.in.re X (str.to.re "Host:toUser-Agent:ClientsConnected-\x0a"))))
; From\x3aX-Mailer\x3Abacktrust\x2EcomReferer\x3aSupremewjpropqmlpohj\x2floLogsX-FILTERED-BY-GHOST\x3a
(assert (str.in.re X (str.to.re "From:X-Mailer:\x13backtrust.comReferer:Supremewjpropqmlpohj/loLogsX-FILTERED-BY-GHOST:\x0a")))
; ^-?([1]?[1-7][1-9]|[1]?[1-8][0]|[1-9]?[0-9])\.{1}\d{1,6}
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.union (re.++ (re.opt (str.to.re "1")) (re.range "1" "7") (re.range "1" "9")) (re.++ (re.opt (str.to.re "1")) (re.range "1" "8") (str.to.re "0")) (re.++ (re.opt (re.range "1" "9")) (re.range "0" "9"))) ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 1 6) (re.range "0" "9")) (str.to.re "\x0a")))))
; log\=\x7BIP\x3A\s+Pcast\d+Host\x3aohgdhkzfhdzo\x2fuwpOK\r\nHost\x3AHWAEname\x2ecnnic\x2ecnRXnewads1\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "log={IP:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Pcast") (re.+ (re.range "0" "9")) (str.to.re "Host:ohgdhkzfhdzo/uwpOK\x0d\x0aHost:HWAEname.cnnic.cnRXnewads1.com\x0a")))))
(check-sat)
