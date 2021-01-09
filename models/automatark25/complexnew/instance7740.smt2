(declare-const X String)
; UBAgentwhenu\x2Ecomwp-includes\x2Ffeed\x2Ephp\x3F
(assert (str.in.re X (str.to.re "UBAgentwhenu.com\x13wp-includes/feed.php?\x0a")))
; www\x2Emyarmory\x2EcomHost\x3aHost\x3amessagessearch\x2eimesh\x2ecom
(assert (str.in.re X (str.to.re "www.myarmory.comHost:Host:messagessearch.imesh.com\x0a")))
(check-sat)
