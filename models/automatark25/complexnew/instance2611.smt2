(declare-const X String)
; \x2FrssScaneradfsgecoiwnf\x7D\x7BTrojan\x3AlogsHost\x3a
(assert (str.in.re X (str.to.re "/rssScaneradfsgecoiwnf\x1b}{Trojan:logsHost:\x0a")))
; Host\x3A\s+Online\s+ocllceclbhs\x2fgth
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Online") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ocllceclbhs/gth\x0a")))))
; ^(([-\w$%&'*+\/=?^_`{|}~.]+)@(([-a-zA-Z0-9_]+\.)*)([-a-zA-Z0-9]+\.)([a-zA-Z0-9]{2,7}))?$
(assert (str.in.re X (re.++ (re.opt (re.++ (re.+ (re.union (str.to.re "-") (str.to.re "$") (str.to.re "%") (str.to.re "&") (str.to.re "'") (str.to.re "*") (str.to.re "+") (str.to.re "/") (str.to.re "=") (str.to.re "?") (str.to.re "^") (str.to.re "_") (str.to.re "`") (str.to.re "{") (str.to.re "|") (str.to.re "}") (str.to.re "~") (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "@") (re.* (re.++ (re.+ (re.union (str.to.re "-") (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_"))) (str.to.re "."))) ((_ re.loop 2 7) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.+ (re.union (str.to.re "-") (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "."))) (str.to.re "\x0a"))))
(check-sat)
