(declare-const X String)
; Black\s+Warezxmlns\x3A%3flinkautomatici\x2EcomSubject\x3aHost\x3A
(assert (str.in.re X (re.++ (str.to.re "Black") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Warezxmlns:%3flinkautomatici.comSubject:Host:\x0a"))))
(check-sat)
