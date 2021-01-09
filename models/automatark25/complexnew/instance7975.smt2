(declare-const X String)
; Subject\x3a\d+rprpgbnrppb\x2fci
(assert (not (str.in.re X (re.++ (str.to.re "Subject:") (re.+ (re.range "0" "9")) (str.to.re "rprpgbnrppb/ci\x0a")))))
; e2give\.com\s+data2\.activshopper\.com
(assert (str.in.re X (re.++ (str.to.re "e2give.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "data2.activshopper.com\x0a"))))
; LOGGuardedHost\x3Awww\x2Esearchreslt\x2Ecomwp-includes\x2Ffeed\x2Ephp\x3F
(assert (str.in.re X (str.to.re "LOGGuardedHost:www.searchreslt.comwp-includes/feed.php?\x0a")))
(check-sat)
