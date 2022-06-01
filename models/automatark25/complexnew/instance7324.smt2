(declare-const X String)
; Host\u{3a}[^\n\r]*pgwtjgxwthx\u{2f}byb\.xky[^\n\r]*source%3Dultrasearch136%26campaign%3Dsnap
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "pgwtjgxwthx/byb.xky") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "source%3Dultrasearch136%26campaign%3Dsnap\u{a}")))))
; \u{2F}bar_pl\u{2F}chk_bar\.fcgiTrojanHost\u{3A}
(assert (str.in_re X (str.to_re "/bar_pl/chk_bar.fcgiTrojanHost:\u{a}")))
; \u{2A}PORT2\u{2A}cdpnode=Host\u{3A}
(assert (str.in_re X (str.to_re "*PORT2*cdpnode=Host:\u{a}")))
(check-sat)
