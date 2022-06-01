(declare-const X String)
; log\=\u{7B}IP\u{3A}\d\u{2E}txt\s+Pcast\u{2E}dat\u{2E}Toolbar\u{7D}\u{7B}OS\u{3A}toolsbar\u{2E}kuaiso\u{2E}comHost\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "log={IP:") (re.range "0" "9") (str.to_re ".txt") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Pcast.dat.Toolbar}{OS:toolsbar.kuaiso.comHost:\u{a}")))))
; Host\u{3A}Attachedengineact=Download
(assert (not (str.in_re X (str.to_re "Host:Attachedengineact=Download\u{a}"))))
(check-sat)
