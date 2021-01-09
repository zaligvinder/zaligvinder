(declare-const X String)
; st=\s+www\.iggsey\.comcs\x2Esmartshopper\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "st=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.iggsey.comcs.smartshopper.com\x0a"))))
(check-sat)
