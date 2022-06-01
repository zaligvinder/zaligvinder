(declare-const X String)
; /\u{2e}wk4([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.wk4") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; media\u{2E}dxcdirect\u{2E}com\.smx\?PASSW=SAHHost\u{3A}ProAgentIDENTIFY
(assert (str.in_re X (str.to_re "media.dxcdirect.com.smx?PASSW=SAHHost:ProAgentIDENTIFY\u{a}")))
; Host\u{3A}HANDYwww\u{2E}purityscan\u{2E}com
(assert (not (str.in_re X (str.to_re "Host:HANDYwww.purityscan.com\u{a}"))))
(check-sat)
