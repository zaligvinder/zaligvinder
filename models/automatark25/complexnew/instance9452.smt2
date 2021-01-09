(declare-const X String)
; /STOR fp[0-9A-F]{44}\x2ebin/
(assert (not (str.in.re X (re.++ (str.to.re "/STOR fp") ((_ re.loop 44 44) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to.re ".bin/\x0a")))))
; client\x2Ebaigoo\x2Ecom\s+ised2k
(assert (str.in.re X (re.++ (str.to.re "client.baigoo.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ised2k\x0a"))))
; %[\-\+0\s\#]{0,1}(\d+){0,1}(\.\d+){0,1}[hlI]{0,1}[cCdiouxXeEfgGnpsS]{1}
(assert (not (str.in.re X (re.++ (str.to.re "%") (re.opt (re.union (str.to.re "-") (str.to.re "+") (str.to.re "0") (str.to.re "#") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (re.+ (re.range "0" "9"))) (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9")))) (re.opt (re.union (str.to.re "h") (str.to.re "l") (str.to.re "I"))) ((_ re.loop 1 1) (re.union (str.to.re "c") (str.to.re "C") (str.to.re "d") (str.to.re "i") (str.to.re "o") (str.to.re "u") (str.to.re "x") (str.to.re "X") (str.to.re "e") (str.to.re "E") (str.to.re "f") (str.to.re "g") (str.to.re "G") (str.to.re "n") (str.to.re "p") (str.to.re "s") (str.to.re "S"))) (str.to.re "\x0a")))))
; PromulGate\s+SbAts.*Uservclxatmlhavj\x2fvsywww\x2Evip-se\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "PromulGate") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "SbAts") (re.* re.allchar) (str.to.re "Uservclxatmlhavj/vsywww.vip-se.com\x13\x0a")))))
; [^(\&)](\w*)+(\=)[\w\d ]*
(assert (not (str.in.re X (re.++ (re.union (str.to.re "(") (str.to.re "&") (str.to.re ")")) (re.+ (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))) (str.to.re "=") (re.* (re.union (re.range "0" "9") (str.to.re " ") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a")))))
(check-sat)
