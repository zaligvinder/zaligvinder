(declare-const X String)
; \x2APORT3\x2A\s+Warezxmlns\x3A%3flinkautomatici\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "*PORT3*") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Warezxmlns:%3flinkautomatici.com\x0a"))))
(check-sat)
