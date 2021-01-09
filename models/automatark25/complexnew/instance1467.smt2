(declare-const X String)
; ^(\+)?([9]{1}[2]{1})?-? ?(\()?([0]{1})?[1-9]{2,4}(\))?-? ??(\()?[1-9]{4,7}(\))?$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "+")) (re.opt (re.++ ((_ re.loop 1 1) (str.to.re "9")) ((_ re.loop 1 1) (str.to.re "2")))) (re.opt (str.to.re "-")) (re.opt (str.to.re " ")) (re.opt (str.to.re "(")) (re.opt ((_ re.loop 1 1) (str.to.re "0"))) ((_ re.loop 2 4) (re.range "1" "9")) (re.opt (str.to.re ")")) (re.opt (str.to.re "-")) (re.opt (str.to.re " ")) (re.opt (str.to.re "(")) ((_ re.loop 4 7) (re.range "1" "9")) (re.opt (str.to.re ")")) (str.to.re "\x0a")))))
; /\x2exml([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.xml") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /^\/b\/(letr|req|opt|eve)\/[0-9a-fA-F]{24}$/U
(assert (str.in.re X (re.++ (str.to.re "//b/") (re.union (str.to.re "letr") (str.to.re "req") (str.to.re "opt") (str.to.re "eve")) (str.to.re "/") ((_ re.loop 24 24) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to.re "/U\x0a"))))
; /[^\n -~\r]{4}/P
(assert (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 4 4) (re.union (str.to.re "\x0a") (re.range " " "~") (str.to.re "\x0d"))) (str.to.re "/P\x0a"))))
; /setup=[a-z]\&s=\d\&r=\d{5}$/Ui
(assert (str.in.re X (re.++ (str.to.re "/setup=") (re.range "a" "z") (str.to.re "&s=") (re.range "0" "9") (str.to.re "&r=") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "/Ui\x0a"))))
(check-sat)
