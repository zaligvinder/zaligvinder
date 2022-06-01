(declare-const X String)
; TM_SEARCH3Host\u{3a}User-Agent\u{3A}media\u{2E}dxcdirect\u{2E}com
(assert (str.in_re X (str.to_re "TM_SEARCH3Host:User-Agent:media.dxcdirect.com\u{a}")))
(check-sat)
