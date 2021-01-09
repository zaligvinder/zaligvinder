(declare-const X String)
; /\/feed\.dll\?pub_id=\d+?\&ua=/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//feed.dll?pub_id=") (re.+ (re.range "0" "9")) (str.to.re "&ua=/Ui\x0a")))))
; ^[^\"]+$
(assert (not (str.in.re X (re.++ (re.+ (re.comp (str.to.re "\x22"))) (str.to.re "\x0a")))))
; ^[a-z0-9,!#\$%&'\*\+/=\?\^_`\{\|}~-]+(\.[a-z0-9,!#\$%&'\*\+/=\?\^_`\{\|}~-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*\.([a-z]{2,})$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re ",") (str.to.re "!") (str.to.re "#") (str.to.re "$") (str.to.re "%") (str.to.re "&") (str.to.re "'") (str.to.re "*") (str.to.re "+") (str.to.re "/") (str.to.re "=") (str.to.re "?") (str.to.re "^") (str.to.re "_") (str.to.re "`") (str.to.re "{") (str.to.re "|") (str.to.re "}") (str.to.re "~") (str.to.re "-"))) (re.* (re.++ (str.to.re ".") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re ",") (str.to.re "!") (str.to.re "#") (str.to.re "$") (str.to.re "%") (str.to.re "&") (str.to.re "'") (str.to.re "*") (str.to.re "+") (str.to.re "/") (str.to.re "=") (str.to.re "?") (str.to.re "^") (str.to.re "_") (str.to.re "`") (str.to.re "{") (str.to.re "|") (str.to.re "}") (str.to.re "~") (str.to.re "-"))))) (str.to.re "@") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-"))) (re.* (re.++ (str.to.re ".") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-"))))) (str.to.re ".\x0a") ((_ re.loop 2 2) (re.range "a" "z")) (re.* (re.range "a" "z")))))
; ^[0-9]{5}(-[0-9]{4})?$
(assert (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.++ (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")))) (str.to.re "\x0a"))))
; \b4[0-9]\b
(assert (not (str.in.re X (re.++ (str.to.re "4") (re.range "0" "9") (str.to.re "\x0a")))))
(check-sat)
