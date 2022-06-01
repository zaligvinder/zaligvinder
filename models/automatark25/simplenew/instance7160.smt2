(declare-const X String)
; subject\u{3A}node=LoginNSIS_DOWNLOAD
(assert (not (str.in_re X (str.to_re "subject:node=LoginNSIS_DOWNLOAD\u{a}"))))
(check-sat)
