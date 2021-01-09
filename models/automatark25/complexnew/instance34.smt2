(declare-const X String)
; (< *balise[ *>|:(.|\n)*>| (.|\n)*>](.|\n)*</balise *>)
(assert (str.in.re X (re.++ (str.to.re "\x0a<") (re.* (str.to.re " ")) (str.to.re "balise") (re.union (str.to.re " ") (str.to.re "*") (str.to.re ">") (str.to.re "|") (str.to.re ":") (str.to.re "(") (str.to.re ".") (str.to.re "\x0a") (str.to.re ")")) (re.* (re.union re.allchar (str.to.re "\x0a"))) (str.to.re "</balise") (re.* (str.to.re " ")) (str.to.re ">"))))
; [\x01-\x08,\x0A-\x1F,\x7F,\x81,\x8D,\x8F,\x90,\x9D]
(assert (str.in.re X (re.++ (re.union (re.range "\x01" "\x08") (str.to.re ",") (re.range "\x0a" "\x1f") (str.to.re "\x7f") (str.to.re "\x81") (str.to.re "\x8d") (str.to.re "\x8f") (str.to.re "\x90") (str.to.re "\x9d")) (str.to.re "\x0a"))))
; Points\d+Host\x3a\stoBasicwww\x2Ewebcruiser\x2Ecc
(assert (not (str.in.re X (re.++ (str.to.re "Points") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "toBasicwww.webcruiser.cc\x0a")))))
; ^(([0]?[1-9]|1[0-2])/([0-2]?[0-9]|3[0-1])/[1-2]\d{3})? ?((([0-1]?\d)|(2[0-3])):[0-5]\d)?(:[0-5]\d)? ?(AM|am|PM|pm)?$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "/") (re.union (re.++ (re.opt (re.range "0" "2")) (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "1"))) (str.to.re "/") (re.range "1" "2") ((_ re.loop 3 3) (re.range "0" "9")))) (re.opt (str.to.re " ")) (re.opt (re.++ (re.union (re.++ (re.opt (re.range "0" "1")) (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re ":") (re.range "0" "5") (re.range "0" "9"))) (re.opt (re.++ (str.to.re ":") (re.range "0" "5") (re.range "0" "9"))) (re.opt (str.to.re " ")) (re.opt (re.union (str.to.re "AM") (str.to.re "am") (str.to.re "PM") (str.to.re "pm"))) (str.to.re "\x0a")))))
; ^(\d+|[a-zA-Z]+)$
(assert (str.in.re X (re.++ (re.union (re.+ (re.range "0" "9")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z")))) (str.to.re "\x0a"))))
(check-sat)
