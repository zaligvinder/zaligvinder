(declare-const X String)
; A-311Host\u{3A}lnzzlnbk\u{2f}pkrm\.finSubject\u{3a}
(assert (str.in_re X (str.to_re "A-311Host:lnzzlnbk/pkrm.finSubject:\u{a}")))
; User-Agent\u{3A}\s+information\swww\u{2E}topadwarereviews\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "information") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.topadwarereviews.com\u{a}"))))
; LOGGuardedHost\u{3A}www\u{2E}searchreslt\u{2E}comwp-includes\u{2F}feed\u{2E}php\u{3F}
(assert (str.in_re X (str.to_re "LOGGuardedHost:www.searchreslt.comwp-includes/feed.php?\u{a}")))
(check-sat)
