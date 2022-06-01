(declare-const X String)
; \u{2F}bar_pl\u{2F}chk_bar\.fcgi\s+adblock\u{2E}linkz\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "/bar_pl/chk_bar.fcgi") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "adblock.linkz.com\u{a}"))))
(check-sat)
