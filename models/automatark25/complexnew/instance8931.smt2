(declare-const X String)
; http[s]?://[a-zA-Z0-9.-/]+
(assert (not (str.in.re X (re.++ (str.to.re "http") (re.opt (str.to.re "s")) (str.to.re "://") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (re.range "." "/"))) (str.to.re "\x0a")))))
; ^[\d]{5}[-\s]{1}[\d]{2}[-\s]{1}[\d]{4}$
(assert (not (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; (((s*)(ftp)(s*)|(http)(s*)|mailto|news|file|webcal):(\S*))|((www.)(\S*))
(assert (str.in.re X (re.union (re.++ (re.union (re.++ (re.* (str.to.re "s")) (str.to.re "ftp") (re.* (str.to.re "s"))) (re.++ (str.to.re "http") (re.* (str.to.re "s"))) (str.to.re "mailto") (str.to.re "news") (str.to.re "file") (str.to.re "webcal")) (str.to.re ":") (re.* (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) (re.++ (str.to.re "\x0a") (re.* (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (str.to.re "www") re.allchar))))
(check-sat)
