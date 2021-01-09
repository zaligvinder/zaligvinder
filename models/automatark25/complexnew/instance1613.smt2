(declare-const X String)
; (.*\.jpe?g|.*\.JPE?G)
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.* re.allchar) (str.to.re ".jp") (re.opt (str.to.re "e")) (str.to.re "g")) (re.++ (re.* re.allchar) (str.to.re ".JP") (re.opt (str.to.re "E")) (str.to.re "G"))) (str.to.re "\x0a")))))
; /^([a-zA-Z0-9])(([\-.]|[_]+)?([a-zA-Z0-9]+))*(@){1}[a-z0-9]+[.]{1}(([a-z]{2,3})|([a-z]{2,3}[.]{1}[a-z]{2,3}))$/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) (re.* (re.++ (re.opt (re.union (re.+ (str.to.re "_")) (str.to.re "-") (str.to.re "."))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))) ((_ re.loop 1 1) (str.to.re "@")) (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) ((_ re.loop 1 1) (str.to.re ".")) (re.union ((_ re.loop 2 3) (re.range "a" "z")) (re.++ ((_ re.loop 2 3) (re.range "a" "z")) ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 2 3) (re.range "a" "z")))) (str.to.re "/\x0a")))))
; /\x2fblackmuscats?\x3f\d/Ui
(assert (str.in.re X (re.++ (str.to.re "//blackmuscat") (re.opt (str.to.re "s")) (str.to.re "?") (re.range "0" "9") (str.to.re "/Ui\x0a"))))
; Host\x3A.*NETObserve\d+Host\x3aohgdhkzfhdzo\x2fuwpOK\r\n
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "NETObserve") (re.+ (re.range "0" "9")) (str.to.re "Host:ohgdhkzfhdzo/uwpOK\x0d\x0a\x0a")))))
; www\x2Eserverlogic3\x2Ecom
(assert (str.in.re X (str.to.re "www.serverlogic3.com\x0a")))
(check-sat)
