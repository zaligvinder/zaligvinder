(declare-const X String)
; Host\u{3A}toUser-Agent\u{3A}ClientsConnected-
(assert (not (str.in_re X (str.to_re "Host:toUser-Agent:ClientsConnected-\u{a}"))))
; From\u{3a}X-Mailer\u{3A}backtrust\u{2E}comReferer\u{3a}Supremewjpropqmlpohj\u{2f}loLogsX-FILTERED-BY-GHOST\u{3a}
(assert (str.in_re X (str.to_re "From:X-Mailer:\u{13}backtrust.comReferer:Supremewjpropqmlpohj/loLogsX-FILTERED-BY-GHOST:\u{a}")))
; ^-?([1]?[1-7][1-9]|[1]?[1-8][0]|[1-9]?[0-9])\.{1}\d{1,6}
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "-")) (re.union (re.++ (re.opt (str.to_re "1")) (re.range "1" "7") (re.range "1" "9")) (re.++ (re.opt (str.to_re "1")) (re.range "1" "8") (str.to_re "0")) (re.++ (re.opt (re.range "1" "9")) (re.range "0" "9"))) ((_ re.loop 1 1) (str.to_re ".")) ((_ re.loop 1 6) (re.range "0" "9")) (str.to_re "\u{a}")))))
; log\=\u{7B}IP\u{3A}\s+Pcast\d+Host\u{3a}ohgdhkzfhdzo\u{2f}uwpOK\r\nHost\u{3A}HWAEname\u{2e}cnnic\u{2e}cnRXnewads1\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "log={IP:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Pcast") (re.+ (re.range "0" "9")) (str.to_re "Host:ohgdhkzfhdzo/uwpOK\u{d}\u{a}Host:HWAEname.cnnic.cnRXnewads1.com\u{a}")))))
(check-sat)
