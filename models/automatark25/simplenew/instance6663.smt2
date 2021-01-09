(declare-const X String)
; Server\d+dcww\x2Edmcast\x2EcomdistID=Host\x3aSubject\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Server") (re.+ (re.range "0" "9")) (str.to.re "dcww.dmcast.comdistID=Host:Subject:\x0a")))))
(check-sat)
