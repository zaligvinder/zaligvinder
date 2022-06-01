(declare-const X String)
; /filename=[^\n]*\u{2e}search-ms/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".search-ms/i\u{a}"))))
; EFError.*Host\u{3A}\swww\u{2e}malware-stopper\u{2e}com
(assert (not (str.in_re X (re.++ (str.to_re "EFError") (re.* re.allchar) (str.to_re "Host:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.malware-stopper.com\u{a}")))))
; action\u{2E}IP-FTPsearch\.dropspam\.com
(assert (not (str.in_re X (str.to_re "action.IP-FTPsearch.dropspam.com\u{a}"))))
; HXLogOnlyanHost\u{3A}spasHost\u{3A}
(assert (not (str.in_re X (str.to_re "HXLogOnlyanHost:spasHost:\u{a}"))))
; logsFictionalReporterCookieUser-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "logsFictionalReporterCookieUser-Agent:\u{a}"))))
(check-sat)
