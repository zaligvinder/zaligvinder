(declare-const X String)
; www\u{2E}altnet\u{2E}comHost\u{3A}NSIS_DOWNLOADSubject\u{3A}User-Agent\u{3A}www\u{2E}searchingall\u{2E}com
(assert (str.in_re X (str.to_re "www.altnet.com\u{1b}Host:NSIS_DOWNLOADSubject:User-Agent:www.searchingall.com\u{a}")))
(check-sat)
