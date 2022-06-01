(declare-const X String)
; www\u{2E}purityscan\u{2E}com.*
(assert (not (str.in_re X (re.++ (str.to_re "www.purityscan.com") (re.* re.allchar) (str.to_re "\u{a}")))))
; Kontikidownloadfile\u{2e}orged2kcom\u{3E}Host\u{3A}Windows
(assert (str.in_re X (str.to_re "Kontikidownloadfile.orged2kcom>Host:Windows\u{a}")))
; Host\u{3A}.*c=[^\n\r]*KeyloggerHost\u{3A}www\.trackhits\.cc
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "c=") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "KeyloggerHost:www.trackhits.cc\u{a}"))))
(check-sat)
