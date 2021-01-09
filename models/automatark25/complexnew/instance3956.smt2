(declare-const X String)
; http\x3A\x2F\x2Fwww\.searchinweb\.com\x2Fsearch\.php\?said=bar
(assert (str.in.re X (str.to.re "http://www.searchinweb.com/search.php?said=bar\x0a")))
; [a-zA-Z0-9!#\$%&'\*\+\-\/=\?\^_`{\|}~]
(assert (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "!") (str.to.re "#") (str.to.re "$") (str.to.re "%") (str.to.re "&") (str.to.re "'") (str.to.re "*") (str.to.re "+") (str.to.re "-") (str.to.re "/") (str.to.re "=") (str.to.re "?") (str.to.re "^") (str.to.re "_") (str.to.re "`") (str.to.re "{") (str.to.re "|") (str.to.re "}") (str.to.re "~")) (str.to.re "\x0a"))))
; ^([a-zA-Z0-9\-]{2,80})$
(assert (not (str.in.re X (re.++ ((_ re.loop 2 80) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-"))) (str.to.re "\x0a")))))
; ^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z]))$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (str.to.re "-") (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z")))))
(check-sat)
