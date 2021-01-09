(declare-const X String)
; UBAgentwhenu\x2Ecomwp-includes\x2Ffeed\x2Ephp\x3F
(assert (str.in.re X (str.to.re "UBAgentwhenu.com\x13wp-includes/feed.php?\x0a")))
(check-sat)
