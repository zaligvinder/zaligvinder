(declare-const X String)
; HWAE.*wowokay\s%3fsearchresltX-Mailer\u{3A}isSubject\u{3a}
(assert (not (str.in_re X (re.++ (str.to_re "HWAE") (re.* re.allchar) (str.to_re "wowokay") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "%3fsearchresltX-Mailer:\u{13}isSubject:\u{a}")))))
; \u{2F}bar_pl\u{2F}chk_bar\.fcgiTrojanHost\u{3A}
(assert (not (str.in_re X (str.to_re "/bar_pl/chk_bar.fcgiTrojanHost:\u{a}"))))
(check-sat)
