(declare-const X String)
; Windows\d+BlackFiltereddaosearch\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Windows") (re.+ (re.range "0" "9")) (str.to.re "BlackFiltereddaosearch.com\x0a"))))
; /^\/[\w-]{48}\.[a-z]{2,8}[0-9]?$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 48 48) (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ".") ((_ re.loop 2 8) (re.range "a" "z")) (re.opt (re.range "0" "9")) (str.to.re "/U\x0a")))))
; www\s+X-Mailer\x3aSpyBuddyUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "www") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "X-Mailer:\x13SpyBuddyUser-Agent:\x0a")))))
(check-sat)
