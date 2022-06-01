(declare-const X String)
; UBAgentwhenu\u{2E}comwp-includes\u{2F}feed\u{2E}php\u{3F}
(assert (str.in_re X (str.to_re "UBAgentwhenu.com\u{13}wp-includes/feed.php?\u{a}")))
; www\u{2E}myarmory\u{2E}comHost\u{3a}Host\u{3a}messagessearch\u{2e}imesh\u{2e}com
(assert (str.in_re X (str.to_re "www.myarmory.comHost:Host:messagessearch.imesh.com\u{a}")))
(check-sat)
