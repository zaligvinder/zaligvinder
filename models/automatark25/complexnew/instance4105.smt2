(declare-const X String)
; started\u{2E}.*\/cgi-bin\/PopupV
(assert (str.in_re X (re.++ (str.to_re "started.") (re.* re.allchar) (str.to_re "/cgi-bin/PopupV\u{a}"))))
; www\u{2E}webcruiser\u{2E}ccgot
(assert (not (str.in_re X (str.to_re "www.webcruiser.ccgot\u{a}"))))
(check-sat)
