(declare-const X String)
; [^\d^\-^\,^\x20]+
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (str.to.re "^") (str.to.re "-") (str.to.re ",") (str.to.re " "))) (str.to.re "\x0a"))))
; User-Agent\x3AHost\x3AhasHost\x3AComputerKeylogger\x2Ecom
(assert (not (str.in.re X (str.to.re "User-Agent:Host:hasHost:ComputerKeylogger.com\x0a"))))
(check-sat)
