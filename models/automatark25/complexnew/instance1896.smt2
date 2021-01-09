(declare-const X String)
; (\d{1,2}(\:|\s)\d{1,2}(\:|\s)\d{1,2}\s*(AM|PM|A|P))
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 1 2) (re.range "0" "9")) (re.union (str.to.re ":") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 1 2) (re.range "0" "9")) (re.union (str.to.re ":") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 1 2) (re.range "0" "9")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "AM") (str.to.re "PM") (str.to.re "A") (str.to.re "P"))))))
; /^[-+]?[1-9](\d*|((\d{1,2})?,(\d{3},)*(\d{3})))?([eE][-+]\d+)?$/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.range "1" "9") (re.opt (re.union (re.* (re.range "0" "9")) (re.++ (re.opt ((_ re.loop 1 2) (re.range "0" "9"))) (str.to.re ",") (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ","))) ((_ re.loop 3 3) (re.range "0" "9"))))) (re.opt (re.++ (re.union (str.to.re "e") (str.to.re "E")) (re.union (str.to.re "-") (str.to.re "+")) (re.+ (re.range "0" "9")))) (str.to.re "/\x0a")))))
; ([a-zA-Z0-9_\-\.]+)(@[a-zA-Z0-9_\-\.]+)
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re "."))) (str.to.re "\x0a@") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re ".")))))))
; LOGGuardedHost\x3Awww\x2Esearchreslt\x2Ecomwp-includes\x2Ffeed\x2Ephp\x3F
(assert (str.in.re X (str.to.re "LOGGuardedHost:www.searchreslt.comwp-includes/feed.php?\x0a")))
; /^\d+O\d+\.jsp\?[a-z0-9\x3d\x2b\x2f]{20}/iR
(assert (str.in.re X (re.++ (str.to.re "/") (re.+ (re.range "0" "9")) (str.to.re "O") (re.+ (re.range "0" "9")) (str.to.re ".jsp?") ((_ re.loop 20 20) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "=") (str.to.re "+") (str.to.re "/"))) (str.to.re "/iR\x0a"))))
(check-sat)
