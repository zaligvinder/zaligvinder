(declare-const X String)
; HBand,\sHost\u{3A}[^\n\r]*lnzzlnbk\u{2f}pkrm\.fin
(assert (not (str.in_re X (re.++ (str.to_re "HBand,") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Host:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "lnzzlnbk/pkrm.fin\u{a}")))))
; \u{2E}html\s+IDENTIFY\s+\u{2F}bar_pl\u{2F}fav\.fcgiwwwUser-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re ".html") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "IDENTIFY") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/bar_pl/fav.fcgiwwwUser-Agent:\u{a}"))))
; /\.(jsp|html)\?[^\r\n]*PG=SPEEDBAR/Ui
(assert (not (str.in_re X (re.++ (str.to_re "/.") (re.union (str.to_re "jsp") (str.to_re "html")) (str.to_re "?") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "PG=SPEEDBAR/Ui\u{a}")))))
; /\u{2e}pct([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.pct") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
(check-sat)
