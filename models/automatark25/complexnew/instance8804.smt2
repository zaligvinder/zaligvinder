(declare-const X String)
; wp-includes\u{2F}theme\u{2E}php\u{3F}.*Apofis\s+TencentTraveler
(assert (not (str.in_re X (re.++ (str.to_re "wp-includes/theme.php?") (re.* re.allchar) (str.to_re "Apofis") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "TencentTraveler\u{a}")))))
; HXDownload\s+Host\u{3A}ArcadeHourspjpoptwql\u{2f}rlnjFrom\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "HXDownload") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:ArcadeHourspjpoptwql/rlnjFrom:\u{a}")))))
(check-sat)
