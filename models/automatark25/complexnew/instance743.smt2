(declare-const X String)
; /\x2erp([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.rp") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; /^(8-?|\+?7-?)?(\(?\d{3}\)?)-?(\d-?){6}\d$/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.opt (re.union (re.++ (str.to.re "8") (re.opt (str.to.re "-"))) (re.++ (re.opt (str.to.re "+")) (str.to.re "7") (re.opt (str.to.re "-"))))) (re.opt (str.to.re "-")) ((_ re.loop 6 6) (re.++ (re.range "0" "9") (re.opt (str.to.re "-")))) (re.range "0" "9") (str.to.re "/\x0a") (re.opt (str.to.re "(")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re ")"))))))
; /window\x2elocation\s*=\s*unescape\s*\x28\s*["']\x25[^"']*https?\x3a/
(assert (str.in.re X (re.++ (str.to.re "/window.location") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "unescape") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "(") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "\x22") (str.to.re "'")) (str.to.re "%") (re.* (re.union (str.to.re "\x22") (str.to.re "'"))) (str.to.re "http") (re.opt (str.to.re "s")) (str.to.re ":/\x0a"))))
; Host\x3AtoUser-Agent\x3AClientsConnected-
(assert (not (str.in.re X (str.to.re "Host:toUser-Agent:ClientsConnected-\x0a"))))
(check-sat)
