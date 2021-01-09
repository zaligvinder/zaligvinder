(declare-const X String)
; \{\\\*\\bkmkstart\s(.*?)\}
(assert (not (str.in.re X (re.++ (str.to.re "{\x5c*\x5cbkmkstart") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.* re.allchar) (str.to.re "}\x0a")))))
; href\s*=\s*\"((\/)([i])(\/)+([\w\-\.,@?^=%&:/~\+#]*[\w\-\@?^=%&/~\+#]+)*)\"
(assert (not (str.in.re X (re.++ (str.to.re "href") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x22\x22\x0a/i") (re.+ (str.to.re "/")) (re.* (re.++ (re.* (re.union (str.to.re "-") (str.to.re ".") (str.to.re ",") (str.to.re "@") (str.to.re "?") (str.to.re "^") (str.to.re "=") (str.to.re "%") (str.to.re "&") (str.to.re ":") (str.to.re "/") (str.to.re "~") (str.to.re "+") (str.to.re "#") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.+ (re.union (str.to.re "-") (str.to.re "@") (str.to.re "?") (str.to.re "^") (str.to.re "=") (str.to.re "%") (str.to.re "&") (str.to.re "/") (str.to.re "~") (str.to.re "+") (str.to.re "#") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))))))))
; User-Agent\x3A\s+\x7D\x7BPassword\x3AAnal
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "}{Password:\x1bAnal\x0a")))))
; ^[a-zA-Z_]{1}[a-zA-Z0-9_@$#]*$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_"))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "@") (str.to.re "$") (str.to.re "#"))) (str.to.re "\x0a")))))
; www\x2Elookster\x2Enetnotificationuuid=qisezhin\x2fiqor\.ym
(assert (not (str.in.re X (str.to.re "www.lookster.netnotification\x13uuid=qisezhin/iqor.ym\x13\x0a"))))
(check-sat)
