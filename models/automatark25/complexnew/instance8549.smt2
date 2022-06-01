(declare-const X String)
; TOOLBAR\s+dist\u{2E}atlas\u{2D}ia\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "TOOLBAR") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "dist.atlas-ia.com\u{a}")))))
; adblock\u{2E}linkz\u{2E}comwww\.iggsey\.comHost\u{3A}
(assert (not (str.in_re X (str.to_re "adblock.linkz.comwww.iggsey.comHost:\u{a}"))))
(check-sat)
