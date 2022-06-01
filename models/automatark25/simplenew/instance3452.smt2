(declare-const X String)
; UBAgentwhenu\u{2E}comwp-includes\u{2F}feed\u{2E}php\u{3F}
(assert (str.in_re X (str.to_re "UBAgentwhenu.com\u{13}wp-includes/feed.php?\u{a}")))
(check-sat)
