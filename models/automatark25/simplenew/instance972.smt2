(declare-const X String)
; Host\u{3A}.*Hello\u{2E}.*Referer\u{3A}ToolbarCurrent\u{3B}CIA
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.* re.allchar) (str.to_re "Hello.") (re.* re.allchar) (str.to_re "Referer:ToolbarCurrent;CIA\u{a}"))))
(check-sat)
