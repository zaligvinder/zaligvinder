(declare-const X String)
; User-Agent\u{3A}User-Agent\u{3A}wp-includes\u{2F}theme\u{2E}php\u{3F}frame_ver2
(assert (str.in_re X (str.to_re "User-Agent:User-Agent:wp-includes/theme.php?frame_ver2\u{a}")))
(check-sat)
