(declare-const X String)
; GmbH\s+Host\x3AHost\x3AMonitoringGoogle
(assert (not (str.in.re X (re.++ (str.to.re "GmbH") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Host:MonitoringGoogle\x0a")))))
; ^[a-zA-z0-9]+[@]{1}[a-zA-Z]+[.]{1}[a-zA-Z]+$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "z") (re.range "0" "9"))) ((_ re.loop 1 1) (str.to.re "@")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 1 1) (str.to.re ".")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a")))))
; /\/jlnp\.html$/U
(assert (str.in.re X (str.to.re "//jlnp.html/U\x0a")))
; ^[A-Za-z]{4}[ |\-]{0,1}[0-9]{6}[ |\-]{0,1}[0-9A-Za-z]{3}$
(assert (str.in.re X (re.++ ((_ re.loop 4 4) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.opt (re.union (str.to.re " ") (str.to.re "|") (str.to.re "-"))) ((_ re.loop 6 6) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "|") (str.to.re "-"))) ((_ re.loop 3 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z"))) (str.to.re "\x0a"))))
; ^([a-zA-Z]+)://([a-zA-Z0-9_\-]+)((\.[a-zA-Z0-9_\-]+|[0-9]{1,3})+)\.([a-zA-Z]{2,6}|[0-9]{1,3})((:[0-9]+)?)((/[a-zA-Z0-9_\-,.;=%]*)*)((\?[a-zA-Z0-9_\-,.;=&%]*)?)$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "://") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-"))) (re.+ (re.union (re.++ (str.to.re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-")))) ((_ re.loop 1 3) (re.range "0" "9")))) (str.to.re ".") (re.union ((_ re.loop 2 6) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 1 3) (re.range "0" "9"))) (re.opt (re.++ (str.to.re ":") (re.+ (re.range "0" "9")))) (re.* (re.++ (str.to.re "/") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re ",") (str.to.re ".") (str.to.re ";") (str.to.re "=") (str.to.re "%"))))) (re.opt (re.++ (str.to.re "?") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re ",") (str.to.re ".") (str.to.re ";") (str.to.re "=") (str.to.re "&") (str.to.re "%"))))) (str.to.re "\x0a"))))
(check-sat)
