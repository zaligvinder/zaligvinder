(declare-const X String)
; HWAEUser-Agent\u{3A}TestHost\u{3A}www\u{2E}dotcomtoolbar\u{2E}com
(assert (not (str.in_re X (str.to_re "HWAEUser-Agent:TestHost:www.dotcomtoolbar.com\u{a}"))))
; (\s{1,})
(assert (not (str.in_re X (re.++ (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}")))))
(check-sat)
