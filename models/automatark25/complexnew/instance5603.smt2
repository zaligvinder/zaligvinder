(declare-const X String)
; ^[0-9]{0,5}[ ]{0,1}[0-9]{0,6}$
(assert (str.in.re X (re.++ ((_ re.loop 0 5) (re.range "0" "9")) (re.opt (str.to.re " ")) ((_ re.loop 0 6) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^\d{1,2}((,)|(,25)|(,50)|(,5)|(,75)|(,0)|(,00))?$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.union (str.to.re ",") (str.to.re ",25") (str.to.re ",50") (str.to.re ",5") (str.to.re ",75") (str.to.re ",0") (str.to.re ",00"))) (str.to.re "\x0a")))))
; ^[a-zA-Z]+((\s|\-|\')[a-zA-Z]+)?$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.opt (re.++ (re.union (str.to.re "-") (str.to.re "'") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))))) (str.to.re "\x0a")))))
; www\s+X-Mailer\x3aSpyBuddyUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "www") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "X-Mailer:\x13SpyBuddyUser-Agent:\x0a"))))
(check-sat)
