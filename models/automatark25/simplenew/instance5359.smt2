(declare-const X String)
; /^\s*?MAIL\s+?FROM\x3a[^\r\n]*?\x28\x29\s\x7b/i
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "MAIL") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "FROM:") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "()") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "{/i\x0a")))))
(check-sat)
