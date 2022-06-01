(declare-const X String)
; Subject\u{3a}\d+rprpgbnrppb\u{2f}ci
(assert (not (str.in_re X (re.++ (str.to_re "Subject:") (re.+ (re.range "0" "9")) (str.to_re "rprpgbnrppb/ci\u{a}")))))
; e2give\.com\s+data2\.activshopper\.com
(assert (str.in_re X (re.++ (str.to_re "e2give.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "data2.activshopper.com\u{a}"))))
; LOGGuardedHost\u{3A}www\u{2E}searchreslt\u{2E}comwp-includes\u{2F}feed\u{2E}php\u{3F}
(assert (str.in_re X (str.to_re "LOGGuardedHost:www.searchreslt.comwp-includes/feed.php?\u{a}")))
(check-sat)
