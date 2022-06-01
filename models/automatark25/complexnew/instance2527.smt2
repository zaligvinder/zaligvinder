(declare-const X String)
; ProtoSubject\u{3a}source\=IncrediFindProjectAgentHost\u{3A}Host\u{3A}Host\u{3A}
(assert (str.in_re X (str.to_re "ProtoSubject:source=IncrediFindProjectAgentHost:Host:Host:\u{a}")))
; www\u{2E}sogou\u{2E}com\s+HWAE\+The\+password\+is\u{3A}
(assert (str.in_re X (re.++ (str.to_re "www.sogou.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "HWAE+The+password+is:\u{a}"))))
; /^\/999$/U
(assert (not (str.in_re X (str.to_re "//999/U\u{a}"))))
; /\.php\?action=jv\&h=\d+/Ui
(assert (not (str.in_re X (re.++ (str.to_re "/.php?action=jv&h=") (re.+ (re.range "0" "9")) (str.to_re "/Ui\u{a}")))))
; LogsHXLogOnlytoolbar\u{2E}i-lookup\u{2E}com
(assert (not (str.in_re X (str.to_re "LogsHXLogOnlytoolbar.i-lookup.com\u{a}"))))
(check-sat)
