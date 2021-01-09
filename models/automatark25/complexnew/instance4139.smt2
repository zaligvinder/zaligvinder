(declare-const X String)
; %[\-\+0\s\#]{0,1}(\d+){0,1}(\.\d+){0,1}[hlI]{0,1}[cCdiouxXeEfgGnpsS]{1}
(assert (str.in.re X (re.++ (str.to.re "%") (re.opt (re.union (str.to.re "-") (str.to.re "+") (str.to.re "0") (str.to.re "#") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (re.+ (re.range "0" "9"))) (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9")))) (re.opt (re.union (str.to.re "h") (str.to.re "l") (str.to.re "I"))) ((_ re.loop 1 1) (re.union (str.to.re "c") (str.to.re "C") (str.to.re "d") (str.to.re "i") (str.to.re "o") (str.to.re "u") (str.to.re "x") (str.to.re "X") (str.to.re "e") (str.to.re "E") (str.to.re "f") (str.to.re "g") (str.to.re "G") (str.to.re "n") (str.to.re "p") (str.to.re "s") (str.to.re "S"))) (str.to.re "\x0a"))))
; /\x2empg([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.mpg") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
