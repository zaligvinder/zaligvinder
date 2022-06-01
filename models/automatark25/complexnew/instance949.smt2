(declare-const X String)
; /\u{2e}mcl([\u{3f}\u{2f}]|$)/Uim
(assert (not (str.in_re X (re.++ (str.to_re "/.mcl") (re.union (str.to_re "?") (str.to_re "/")) (str.to_re "/Uim\u{a}")))))
; Host\u{3A}Host\u{3A}X-Mailer\u{3a}
(assert (not (str.in_re X (str.to_re "Host:Host:X-Mailer:\u{13}\u{a}"))))
; pjpoptwql\u{2f}rlnj\sPG=SPEEDBARadblock\u{2E}linkz\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "pjpoptwql/rlnj") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "PG=SPEEDBARadblock.linkz.com\u{a}"))))
(check-sat)
