(declare-const X String)
; Agent.*as\u{2E}starware\u{2E}com\s+ServerToolbarcojud\u{2E}dmcast\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "Agent") (re.* re.allchar) (str.to_re "as.starware.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ServerToolbarcojud.dmcast.com\u{a}")))))
(check-sat)
