(declare-const X String)
; SbAts\d+dcww\u{2E}dmcast\u{2E}comdistID=
(assert (str.in_re X (re.++ (str.to_re "SbAts") (re.+ (re.range "0" "9")) (str.to_re "dcww.dmcast.comdistID=\u{a}"))))
(check-sat)
