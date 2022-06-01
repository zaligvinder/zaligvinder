(declare-const X String)
; corep\u{2E}dmcast\u{2E}comOwner\u{3A}
(assert (str.in_re X (str.to_re "corep.dmcast.comOwner:\u{a}")))
; wjpropqmlpohj\u{2f}lo\s+media\u{2E}dxcdirect\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "wjpropqmlpohj/lo") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "media.dxcdirect.com\u{a}"))))
(check-sat)
