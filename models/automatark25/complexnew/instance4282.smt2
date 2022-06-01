(declare-const X String)
; Host\u{3A}1\-extreme\u{2E}bizX-Mailer\u{3a}www\u{2E}webcruiser\u{2E}cc
(assert (str.in_re X (str.to_re "Host:1-extreme.bizX-Mailer:\u{13}www.webcruiser.cc\u{a}")))
; HWAE\s+\u{2F}ta\u{2F}NEWS\u{2F}Guptacharloomcompany\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "HWAE") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/ta/NEWS/Guptacharloomcompany.com\u{a}"))))
; Host\u{3A}Portawww\.thecommunicator\.net
(assert (str.in_re X (str.to_re "Host:Portawww.thecommunicator.net\u{a}")))
; version\s+CodeguruBrowserwww\u{2E}sogou\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "version") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "CodeguruBrowserwww.sogou.com\u{a}")))))
(check-sat)
