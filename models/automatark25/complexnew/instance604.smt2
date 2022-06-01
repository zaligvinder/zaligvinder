(declare-const X String)
; Host\u{3A}00000www\u{2E}zhongsou\u{2E}com
(assert (not (str.in_re X (str.to_re "Host:00000www.zhongsou.com\u{a}"))))
; /\u{2e}xfdl([\?\u{5c}\u{2f}]|$)/miU
(assert (str.in_re X (re.++ (str.to_re "/.xfdl") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/miU\u{a}"))))
; (\bprotected\b.*(public))|(\bprivate\b.*(protected))|(\bprivate\b.*(public))
(assert (not (str.in_re X (re.union (re.++ (str.to_re "protected") (re.* re.allchar) (str.to_re "public")) (re.++ (str.to_re "private") (re.* re.allchar) (str.to_re "protected")) (re.++ (str.to_re "\u{a}private") (re.* re.allchar) (str.to_re "public"))))))
; X-Mailer\u{3A}\s+ToolbarScanerX-Mailer\u{3A}Information
(assert (not (str.in_re X (re.++ (str.to_re "X-Mailer:\u{13}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ToolbarScanerX-Mailer:\u{13}Information\u{a}")))))
(check-sat)
