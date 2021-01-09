(declare-const X String)
; this is test = this is
(assert (str.in.re X (str.to.re "this is test = this is\x0a")))
; `.*?((http|ftp|https)://[\w#$&+,\/:;=?@.-]+)[^\w#$&+,\/:;=?@.-]*?`i
(assert (not (str.in.re X (re.++ (str.to.re "`") (re.* re.allchar) (re.* (re.union (str.to.re "#") (str.to.re "$") (str.to.re "&") (str.to.re "+") (str.to.re ",") (str.to.re "/") (str.to.re ":") (str.to.re ";") (str.to.re "=") (str.to.re "?") (str.to.re "@") (str.to.re ".") (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "`i\x0a") (re.union (str.to.re "http") (str.to.re "ftp") (str.to.re "https")) (str.to.re "://") (re.+ (re.union (str.to.re "#") (str.to.re "$") (str.to.re "&") (str.to.re "+") (str.to.re ",") (str.to.re "/") (str.to.re ":") (str.to.re ";") (str.to.re "=") (str.to.re "?") (str.to.re "@") (str.to.re ".") (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))))))
(check-sat)
