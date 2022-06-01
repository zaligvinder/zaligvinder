(declare-const X String)
; HWAEUser-Agent\u{3A}TestHost\u{3A}www\u{2E}dotcomtoolbar\u{2E}com
(assert (str.in_re X (str.to_re "HWAEUser-Agent:TestHost:www.dotcomtoolbar.com\u{a}")))
(check-sat)
