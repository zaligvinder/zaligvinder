(declare-const X String)
; Supreme\d+Host\x3A\d+yxegtd\x2fefcwgHost\x3ATPSystem
(assert (str.in.re X (re.++ (str.to.re "Supreme") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "yxegtd/efcwgHost:TPSystem\x0a"))))
; LOGGuardedHost\x3Awww\x2Esearchreslt\x2Ecomwp-includes\x2Ffeed\x2Ephp\x3F
(assert (str.in.re X (str.to.re "LOGGuardedHost:www.searchreslt.comwp-includes/feed.php?\x0a")))
(check-sat)
