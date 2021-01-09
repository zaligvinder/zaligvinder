(declare-const X String)
; /\x0aArray\x0a\x28\x0a\x20{4}\x5b[a-z\d]{11}\x5d\x20\x3d\x3e\x20\d{16}\x0a\x29/i
(assert (not (str.in.re X (re.++ (str.to.re "/\x0aArray\x0a(\x0a") ((_ re.loop 4 4) (str.to.re " ")) (str.to.re "[") ((_ re.loop 11 11) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "] => ") ((_ re.loop 16 16) (re.range "0" "9")) (str.to.re "\x0a)/i\x0a")))))
; ^\<(\w){1,}\>(.){0,}([\</]|[\<])(\w){1,}\>$
(assert (str.in.re X (re.++ (str.to.re "<") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ">") (re.* re.allchar) (re.union (str.to.re "<") (str.to.re "/")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ">\x0a"))))
; ^\s*[a-zA-Z,\s]+\s*$
(assert (str.in.re X (re.++ (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re ",") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
(check-sat)
