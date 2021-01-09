(declare-const X String)
; com\x2Findex\.php\?tpid=\x7D\x7BUser\x3A
(assert (not (str.in.re X (str.to.re "com/index.php?tpid=}{User:\x0a"))))
; ^((0[1-9])|(1[0-2]))\/(\d{2})$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "/") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a")))))
; /^\/[-\w]{70,78}==?$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 70 78) (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "=") (re.opt (str.to.re "=")) (str.to.re "/U\x0a"))))
; www\x2e2-seek\x2ecom\x2fsearchUser-Agent\x3a
(assert (not (str.in.re X (str.to.re "www.2-seek.com/searchUser-Agent:\x0a"))))
; ^\d+(\.\d{2})?$
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
