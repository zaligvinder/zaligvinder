(declare-const X String)
; `.*?((http|ftp|https)://[\w#$&+,\/:;=?@.-]+)[^\w#$&+,\/:;=?@.-]*?`i
(assert (not (str.in.re X (re.++ (str.to.re "`") (re.* re.allchar) (re.* (re.union (str.to.re "#") (str.to.re "$") (str.to.re "&") (str.to.re "+") (str.to.re ",") (str.to.re "/") (str.to.re ":") (str.to.re ";") (str.to.re "=") (str.to.re "?") (str.to.re "@") (str.to.re ".") (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "`i\x0a") (re.union (str.to.re "http") (str.to.re "ftp") (str.to.re "https")) (str.to.re "://") (re.+ (re.union (str.to.re "#") (str.to.re "$") (str.to.re "&") (str.to.re "+") (str.to.re ",") (str.to.re "/") (str.to.re ":") (str.to.re ";") (str.to.re "=") (str.to.re "?") (str.to.re "@") (str.to.re ".") (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))))))
; /\/[a-z]{2}\/testcon.php$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 2 2) (re.range "a" "z")) (str.to.re "/testcon") re.allchar (str.to.re "php/U\x0a"))))
; ^[a-zA-Z0-9!@#$&_]+$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "!") (str.to.re "@") (str.to.re "#") (str.to.re "$") (str.to.re "&") (str.to.re "_"))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2ekvl/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".kvl/i\x0a"))))
(check-sat)
