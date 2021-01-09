(declare-const X String)
; /^\/[\w-]{48}\.[a-z]{2,8}[0-9]?$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 48 48) (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ".") ((_ re.loop 2 8) (re.range "a" "z")) (re.opt (re.range "0" "9")) (str.to.re "/U\x0a"))))
; /^h=\d+&w=\d+&ua=/Psi
(assert (not (str.in.re X (re.++ (str.to.re "/h=") (re.+ (re.range "0" "9")) (str.to.re "&w=") (re.+ (re.range "0" "9")) (str.to.re "&ua=/Psi\x0a")))))
; start\s*([^$]*)\s*(.*?)
(assert (not (str.in.re X (re.++ (str.to.re "start") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.comp (str.to.re "$"))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* re.allchar) (str.to.re "\x0a")))))
; is\x7D\x7BPort\x3A\x7D\x7BUser\x3A
(assert (not (str.in.re X (str.to.re "is}{Port:}{User:\x0a"))))
(check-sat)
