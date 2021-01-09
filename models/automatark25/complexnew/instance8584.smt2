(declare-const X String)
; /filename=[^\n]*\x2emaplet/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".maplet/i\x0a"))))
; /^router=.*?arg=[a-z\d\.]*[^a-z\d\.&]/iP
(assert (not (str.in.re X (re.++ (str.to.re "/router=") (re.* re.allchar) (str.to.re "arg=") (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "."))) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re ".") (str.to.re "&")) (str.to.re "/iP\x0a")))))
; (SELECT\s[\w\*\)\(\,\s]+\sFROM\s[\w]+)|
(assert (not (str.in.re X (re.union (re.++ (str.to.re "SELECT") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.+ (re.union (str.to.re "*") (str.to.re ")") (str.to.re "(") (str.to.re ",") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "FROM") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))) (str.to.re "\x0a")))))
; areHost\x3Ae2give\.comHost\x3aX-Mailer\x3AsportsHost\x3AToolbar
(assert (not (str.in.re X (str.to.re "areHost:e2give.comHost:X-Mailer:\x13sportsHost:Toolbar\x0a"))))
(check-sat)
