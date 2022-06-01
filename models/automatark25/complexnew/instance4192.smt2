(declare-const X String)
; ^[-+]?\d*$
(assert (str.in_re X (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.* (re.range "0" "9")) (str.to_re "\u{a}"))))
; ads\.grokads\.com\s+deskwizz\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "ads.grokads.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "deskwizz.com\u{a}"))))
(check-sat)
