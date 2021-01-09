(declare-const X String)
; sports\s+ToolbarScanerX-Mailer\x3AInformation
(assert (str.in.re X (re.++ (str.to.re "sports") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ToolbarScanerX-Mailer:\x13Information\x0a"))))
(check-sat)
