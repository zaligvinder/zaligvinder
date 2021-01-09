(declare-const X String)
; User-Agent\x3AHost\x3AhasHost\x3AComputerKeylogger\x2Ecom
(assert (str.in.re X (str.to.re "User-Agent:Host:hasHost:ComputerKeylogger.com\x0a")))
(check-sat)
