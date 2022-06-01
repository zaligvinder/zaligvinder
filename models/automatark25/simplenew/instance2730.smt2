(declare-const X String)
; ver\d+sports\w+whenu\u{2E}comwp-includes\u{2F}feed\u{2E}php\u{3F}
(assert (str.in_re X (re.++ (str.to_re "ver") (re.+ (re.range "0" "9")) (str.to_re "sports") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "whenu.com\u{13}wp-includes/feed.php?\u{a}"))))
(check-sat)
