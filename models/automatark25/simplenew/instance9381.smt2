(declare-const X String)
; log\=\x7BIP\x3A\s+Pcast\d+Host\x3aohgdhkzfhdzo\x2fuwpOK\r\nHost\x3AHWAEname\x2ecnnic\x2ecnRXnewads1\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "log={IP:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Pcast") (re.+ (re.range "0" "9")) (str.to.re "Host:ohgdhkzfhdzo/uwpOK\x0d\x0aHost:HWAEname.cnnic.cnRXnewads1.com\x0a"))))
(check-sat)
