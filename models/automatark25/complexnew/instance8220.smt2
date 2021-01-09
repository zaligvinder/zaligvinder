(declare-const X String)
; HXLogOnlyDaemonactivityIterenetFrom\x3AClass
(assert (str.in.re X (str.to.re "HXLogOnlyDaemonactivityIterenetFrom:Class\x0a")))
; [a-f0-9]{8}-[a-f0-9]{4}-4[a-f0-9]{3}-[89ab][a-f0-9]{3}-[a-f0-9]{12}
(assert (not (str.in.re X (re.++ ((_ re.loop 8 8) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "-4") ((_ re.loop 3 3) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "-") (re.union (str.to.re "8") (str.to.re "9") (str.to.re "a") (str.to.re "b")) ((_ re.loop 3 3) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 12 12) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "\x0a")))))
; `.*?((http|ftp|https)://[\w#$&+,\/:;=?@.-]+)[^\w#$&+,\/:;=?@.-]*?`i
(assert (not (str.in.re X (re.++ (str.to.re "`") (re.* re.allchar) (re.* (re.union (str.to.re "#") (str.to.re "$") (str.to.re "&") (str.to.re "+") (str.to.re ",") (str.to.re "/") (str.to.re ":") (str.to.re ";") (str.to.re "=") (str.to.re "?") (str.to.re "@") (str.to.re ".") (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "`i\x0a") (re.union (str.to.re "http") (str.to.re "ftp") (str.to.re "https")) (str.to.re "://") (re.+ (re.union (str.to.re "#") (str.to.re "$") (str.to.re "&") (str.to.re "+") (str.to.re ",") (str.to.re "/") (str.to.re ":") (str.to.re ";") (str.to.re "=") (str.to.re "?") (str.to.re "@") (str.to.re ".") (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))))))
; Ready\s+Eye.*http\x3A\x2F\x2Fsupremetoolbar
(assert (not (str.in.re X (re.++ (str.to.re "Ready") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Eye") (re.* re.allchar) (str.to.re "http://supremetoolbar\x0a")))))
(check-sat)
