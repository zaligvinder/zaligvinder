(declare-const X String)
; media\u{2E}dxcdirect\u{2E}com\.smx\?PASSW=SAHHost\u{3A}ProAgentIDENTIFY
(assert (not (str.in_re X (str.to_re "media.dxcdirect.com.smx?PASSW=SAHHost:ProAgentIDENTIFY\u{a}"))))
(check-sat)
