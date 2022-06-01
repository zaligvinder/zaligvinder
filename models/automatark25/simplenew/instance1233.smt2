(declare-const X String)
; www\u{2E}serverlogic3\u{2E}com\d+ToolBar.*Host\u{3A}HWAEUser-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "www.serverlogic3.com") (re.+ (re.range "0" "9")) (str.to_re "ToolBar") (re.* re.allchar) (str.to_re "Host:HWAEUser-Agent:\u{a}")))))
(check-sat)
