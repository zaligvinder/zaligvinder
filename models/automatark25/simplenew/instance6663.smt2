(declare-const X String)
; Server\d+dcww\u{2E}dmcast\u{2E}comdistID=Host\u{3a}Subject\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "Server") (re.+ (re.range "0" "9")) (str.to_re "dcww.dmcast.comdistID=Host:Subject:\u{a}")))))
(check-sat)
