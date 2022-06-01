(declare-const X String)
; wp-includes\u{2F}theme\u{2E}php\u{3F}.*Apofis\s+TencentTraveler
(assert (str.in_re X (re.++ (str.to_re "wp-includes/theme.php?") (re.* re.allchar) (str.to_re "Apofis") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "TencentTraveler\u{a}"))))
; /filename=[^\n]*\u{2e}xpm/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xpm/i\u{a}")))))
; X-Mailer\u{3A}isSubject\u{3a}
(assert (not (str.in_re X (str.to_re "X-Mailer:\u{13}isSubject:\u{a}"))))
(check-sat)
