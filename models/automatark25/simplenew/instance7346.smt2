(declare-const X String)
; Host\u{3A}cdpnode=FILESIZE\u{3E}
(assert (not (str.in_re X (str.to_re "Host:cdpnode=FILESIZE>\u{13}\u{a}"))))
(check-sat)
