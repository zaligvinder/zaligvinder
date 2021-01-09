(declare-const X String)
; LOGGuardedHost\x3Awww\x2Esearchreslt\x2Ecomwp-includes\x2Ffeed\x2Ephp\x3F
(assert (str.in.re X (str.to.re "LOGGuardedHost:www.searchreslt.comwp-includes/feed.php?\x0a")))
(check-sat)
