(declare-const X String)
; Host\u{3A}Test\u{3C}\u{2F}chat\u{3E}ResultsSubject\u{3A}
(assert (str.in_re X (str.to_re "Host:Test</chat>ResultsSubject:\u{a}")))
; OS-www\u{2E}topadwarereviews\u{2E}commedia\u{2E}top-banners\u{2E}comSuccessfully\u{21}
(assert (not (str.in_re X (str.to_re "OS-www.topadwarereviews.commedia.top-banners.comSuccessfully!\u{a}"))))
; X-OSSproxy\u{3a}FTPSubject\u{3a}ServerMicrosoft\u{2A}PORT3\u{2A}Pro
(assert (not (str.in_re X (str.to_re "X-OSSproxy:FTPSubject:ServerMicrosoft*PORT3*Pro\u{a}"))))
(check-sat)
