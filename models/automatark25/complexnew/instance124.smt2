(declare-const X String)
; ^[a-z\.]*\s?([a-z\-\']+\s)+[a-z\-\']+$
(assert (str.in.re X (re.++ (re.* (re.union (re.range "a" "z") (str.to.re "."))) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (str.to.re "-") (str.to.re "'"))) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (re.+ (re.union (re.range "a" "z") (str.to.re "-") (str.to.re "'"))) (str.to.re "\x0a"))))
; ^([0-9][,]?)*([0-9][0-9])$
(assert (not (str.in.re X (re.++ (re.* (re.++ (re.range "0" "9") (re.opt (str.to.re ",")))) (str.to.re "\x0a") (re.range "0" "9") (re.range "0" "9")))))
; /filename=[^\n]*\x2eogv/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ogv/i\x0a")))))
; User-Agent\x3A\d+Desktop\sIDENTIFY666User-Agent\x3A\x5BStatic
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "Desktop") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "IDENTIFY666User-Agent:[Static\x0a")))))
(check-sat)
