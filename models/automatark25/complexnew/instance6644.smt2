(declare-const X String)
; ^(([a-zA-Z]{2})([0-9]{6}))$
(assert (str.in_re X (re.++ (str.to_re "\u{a}") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 6 6) (re.range "0" "9")))))
; Subject\u{3a}FTPdistdcww\u{2E}dmcast\u{2E}com
(assert (str.in_re X (str.to_re "Subject:FTPdistdcww.dmcast.com\u{a}")))
(check-sat)
