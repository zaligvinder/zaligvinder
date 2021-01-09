(declare-const X String)
; /\x2Ecall\x2Ecall\s*\x28[^\x29\x2C]*?\x2C\s*\x28?(0x|\d)/i
(assert (str.in.re X (re.++ (str.to.re "/.call.call") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "(") (re.* (re.union (str.to.re ")") (str.to.re ","))) (str.to.re ",") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re "(")) (re.union (str.to.re "0x") (re.range "0" "9")) (str.to.re "/i\x0a"))))
(check-sat)
