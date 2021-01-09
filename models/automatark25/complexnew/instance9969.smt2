(declare-const X String)
; ^((\\){2})(([A-Za-z ',.;]+)(\\?)([A-Za-z ',.;]\\?)*)$
(assert (not (str.in.re X (re.++ ((_ re.loop 2 2) (str.to.re "\x5c")) (str.to.re "\x0a") (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (str.to.re " ") (str.to.re "'") (str.to.re ",") (str.to.re ".") (str.to.re ";"))) (re.opt (str.to.re "\x5c")) (re.* (re.++ (re.union (re.range "A" "Z") (re.range "a" "z") (str.to.re " ") (str.to.re "'") (str.to.re ",") (str.to.re ".") (str.to.re ";")) (re.opt (str.to.re "\x5c"))))))))
; /\/[a-zA-Z0-9]{4,10}\.jar$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 4 10) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re ".jar/U\x0a"))))
; Reports[^\n\r]*User-Agent\x3A.*largePass-Onseqepagqfphv\x2fsfd
(assert (not (str.in.re X (re.++ (str.to.re "Reports") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "largePass-Onseqepagqfphv/sfd\x0a")))))
; ^[0-9]{5}([\s-]{1}[0-9]{4})?$
(assert (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.++ ((_ re.loop 1 1) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")))) (str.to.re "\x0a"))))
; aohobygi\x2fzwiwHost\x3a\x7D\x7Crichfind\x2Ecom
(assert (not (str.in.re X (str.to.re "aohobygi/zwiwHost:}|richfind.com\x0a"))))
(check-sat)
