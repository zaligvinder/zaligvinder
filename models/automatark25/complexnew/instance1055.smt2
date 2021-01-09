(declare-const X String)
; ^[0-9]{1,}(,[0-9]+){0,}$
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.* (re.++ (str.to.re ",") (re.+ (re.range "0" "9")))) (str.to.re "\x0a"))))
; ^[AHJ-NPR-UW-Z]{2}\s?[0-9]{3}\s?[AHJ-NPR-UW-Z]{2}$
(assert (str.in.re X (re.++ ((_ re.loop 2 2) (re.union (str.to.re "A") (str.to.re "H") (re.range "J" "N") (str.to.re "P") (re.range "R" "U") (re.range "W" "Z"))) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.union (str.to.re "A") (str.to.re "H") (re.range "J" "N") (str.to.re "P") (re.range "R" "U") (re.range "W" "Z"))) (str.to.re "\x0a"))))
; /filename\s*=\s*[^\r\n]*?\x2eswf[\x22\x27\x3b\s\r\n]/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re ".swf") (re.union (str.to.re "\x22") (str.to.re "'") (str.to.re ";") (str.to.re "\x0d") (str.to.re "\x0a") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "/i\x0a")))))
(check-sat)
