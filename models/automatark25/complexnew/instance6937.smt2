(declare-const X String)
; \d+([\.|\,][0]+?[1-9]+)?
(assert (not (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (re.union (str.to.re ".") (str.to.re "|") (str.to.re ",")) (re.+ (str.to.re "0")) (re.+ (re.range "1" "9")))) (str.to.re "\x0a")))))
; /filename\s*=\s*[^\r\n]*?\x2epcx[\x22\x27\x3b\s\r\n]/i
(assert (str.in.re X (re.++ (str.to.re "/filename") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re ".pcx") (re.union (str.to.re "\x22") (str.to.re "'") (str.to.re ";") (str.to.re "\x0d") (str.to.re "\x0a") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "/i\x0a"))))
; \x28BDLL\x29Googledll\x3F
(assert (str.in.re X (str.to.re "(BDLL)\x13Googledll?\x0a")))
(check-sat)
