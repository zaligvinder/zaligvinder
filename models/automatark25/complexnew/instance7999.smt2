(declare-const X String)
; /filename=[^\n]*\x2evsd/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".vsd/i\x0a"))))
; <[a-zA-Z]+(\s+[a-zA-Z]+\s*=\s*("([^"]*)"|'([^']*)'))*\s*/>
(assert (str.in.re X (re.++ (str.to.re "<") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* (re.++ (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (re.++ (str.to.re "\x22") (re.* (re.comp (str.to.re "\x22"))) (str.to.re "\x22")) (re.++ (str.to.re "'") (re.* (re.comp (str.to.re "'"))) (str.to.re "'"))))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/>\x0a"))))
; ^(\d?)*\.?(\d{1}|\d{2})?$
(assert (str.in.re X (re.++ (re.* (re.opt (re.range "0" "9"))) (re.opt (str.to.re ".")) (re.opt (re.union ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
; ';([dmstrl])([ .,?!\)\\/<])
(assert (not (str.in.re X (re.++ (str.to.re "';") (re.union (str.to.re "d") (str.to.re "m") (str.to.re "s") (str.to.re "t") (str.to.re "r") (str.to.re "l")) (re.union (str.to.re " ") (str.to.re ".") (str.to.re ",") (str.to.re "?") (str.to.re "!") (str.to.re ")") (str.to.re "\x5c") (str.to.re "/") (str.to.re "<")) (str.to.re "\x0a")))))
(check-sat)
