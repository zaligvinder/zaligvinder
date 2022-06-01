(declare-const X String)
; User-Agent\u{3A}[^\n\r]*quick\u{2E}qsrch\u{2E}com.*www\.searchinweb\.com
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "quick.qsrch.com") (re.* re.allchar) (str.to_re "www.searchinweb.com\u{a}")))))
(check-sat)
