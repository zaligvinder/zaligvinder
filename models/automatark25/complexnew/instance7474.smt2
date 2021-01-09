(declare-const X String)
; (Word1|Word2).*?(10|[1-9])
(assert (not (str.in.re X (re.++ (re.* re.allchar) (re.union (str.to.re "10") (re.range "1" "9")) (str.to.re "\x0aWord") (re.union (str.to.re "1") (str.to.re "2"))))))
; to\d+User-Agent\x3AFiltered
(assert (str.in.re X (re.++ (str.to.re "to") (re.+ (re.range "0" "9")) (str.to.re "User-Agent:Filtered\x0a"))))
; ^(LDAP://([\w]+/)?(CN=['\w\s\-\&]+,)*(OU=['\w\s\-\&]+,)*(DC=['\w\s\-\&]+[,]*)+)$
(assert (str.in.re X (re.++ (str.to.re "\x0aLDAP://") (re.opt (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "/"))) (re.* (re.++ (str.to.re "CN=") (re.+ (re.union (str.to.re "'") (str.to.re "-") (str.to.re "&") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ","))) (re.* (re.++ (str.to.re "OU=") (re.+ (re.union (str.to.re "'") (str.to.re "-") (str.to.re "&") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ","))) (re.+ (re.++ (str.to.re "DC=") (re.+ (re.union (str.to.re "'") (str.to.re "-") (str.to.re "&") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (str.to.re ",")))))))
; (^(\d{2}\x2E\d{3}\x2E\d{3}[-]\d{1})$|^(\d{2}\x2E\d{3}\x2E\d{3})$)
(assert (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
