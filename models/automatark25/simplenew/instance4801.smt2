(declare-const X String)
; ads\.grokads\.com\s+deskwizz\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "ads.grokads.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "deskwizz.com\u{a}")))))
(check-sat)
