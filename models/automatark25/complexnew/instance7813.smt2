(declare-const X String)
; /\x2fblackmuscats?\x3f\d/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//blackmuscat") (re.opt (str.to.re "s")) (str.to.re "?") (re.range "0" "9") (str.to.re "/Ui\x0a")))))
; ^([a-zA-Z0_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,3}|[0-9]{1,3})(\]?)$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "0") (str.to.re "_") (str.to.re "-") (str.to.re "."))) (str.to.re "@") (re.union (re.++ (str.to.re "[") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".")) (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-"))) (str.to.re ".")))) (re.union ((_ re.loop 2 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 1 3) (re.range "0" "9"))) (re.opt (str.to.re "]")) (str.to.re "\x0a"))))
; (^[+]?\d*\.?\d*[1-9]+\d*$)|(^[+]?[1-9]+\d*\.\d*$)
(assert (not (str.in.re X (re.union (re.++ (re.opt (str.to.re "+")) (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.* (re.range "0" "9")) (re.+ (re.range "1" "9")) (re.* (re.range "0" "9"))) (re.++ (str.to.re "\x0a") (re.opt (str.to.re "+")) (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to.re ".") (re.* (re.range "0" "9")))))))
; UBAgentwhenu\x2Ecomwp-includes\x2Ffeed\x2Ephp\x3F
(assert (str.in.re X (str.to.re "UBAgentwhenu.com\x13wp-includes/feed.php?\x0a")))
(check-sat)
