(declare-const X String)
; Host\u{3A}Host\u{3a}sidebar\.activeshopper\.com
(assert (str.in_re X (str.to_re "Host:Host:sidebar.activeshopper.com\u{a}")))
; (\(")([0-9]*)(\")
(assert (not (str.in_re X (re.++ (str.to_re "(\u{22}") (re.* (re.range "0" "9")) (str.to_re "\u{22}\u{a}")))))
; (\[url=?"?)([^\]"]*)("?\])([^\[]*)(\[/url\])
(assert (str.in_re X (re.++ (re.* (re.union (str.to_re "]") (str.to_re "\u{22}"))) (re.* (re.comp (str.to_re "["))) (str.to_re "[/url]\u{a}[url") (re.opt (str.to_re "=")) (re.opt (str.to_re "\u{22}")) (re.opt (str.to_re "\u{22}")) (str.to_re "]"))))
(check-sat)
