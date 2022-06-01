(declare-const X String)
; /Referer\u{3a}[^\n]*fla\.php\?wq=[a-f0-9]+\u{d}\u{a}/H
(assert (str.in_re X (re.++ (str.to_re "/Referer:") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re "fla.php?wq=") (re.+ (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "\u{d}\u{a}/H\u{a}"))))
; Host\u{3A}\s+User-Agent\u{3A}.*LogsHost\u{3A}Host\u{3A}
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "LogsHost:Host:\u{a}"))))
; Host\u{3a}YOUR\u{2F}xml\u{2F}toolbar\u{2F}GREATExplorerSecureNet
(assert (str.in_re X (str.to_re "Host:YOUR/xml/toolbar/GREATExplorerSecureNet\u{a}")))
; engineResultUser-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "engineResultUser-Agent:\u{a}"))))
(check-sat)
