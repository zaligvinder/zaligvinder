(declare-const X String)
; Subject\u{3a}FTPdistdcww\u{2E}dmcast\u{2E}com
(assert (not (str.in_re X (str.to_re "Subject:FTPdistdcww.dmcast.com\u{a}"))))
(check-sat)
