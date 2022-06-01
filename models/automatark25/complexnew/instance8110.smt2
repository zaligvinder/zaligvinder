(declare-const X String)
; Subject\u{3A}as\u{2E}starware\u{2E}com\u{2F}dp\u{2F}search\?x=
(assert (str.in_re X (str.to_re "Subject:as.starware.com/dp/search?x=\u{a}")))
; Stealthwww\u{2E}myarmory\u{2E}comresultsmaster\u{2E}com
(assert (str.in_re X (str.to_re "Stealthwww.myarmory.comresultsmaster.com\u{13}\u{a}")))
; sponsor2\.ucmore\.com\s+informationHost\u{3A}\u{2F}ezsb
(assert (str.in_re X (re.++ (str.to_re "sponsor2.ucmore.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "informationHost:/ezsb\u{a}"))))
(check-sat)
