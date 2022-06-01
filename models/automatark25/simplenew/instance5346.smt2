(declare-const X String)
; LOGGuardedHost\u{3A}www\u{2E}searchreslt\u{2E}comwp-includes\u{2F}feed\u{2E}php\u{3F}
(assert (str.in_re X (str.to_re "LOGGuardedHost:www.searchreslt.comwp-includes/feed.php?\u{a}")))
(check-sat)
