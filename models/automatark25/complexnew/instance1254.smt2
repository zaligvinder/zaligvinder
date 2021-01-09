(declare-const X String)
; ^(-?\$?([1-9]\d{0,2}(,\d{3})*|[1-9]\d*|0|)(.\d{1,2})?|\(\$?([1-9]\d{0,2}(,\d{3})*|[1-9]\d*|0|)(.\d{1,2})?\))$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "-")) (re.opt (str.to.re "$")) (re.union (re.++ (re.range "1" "9") ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.++ (re.range "1" "9") (re.* (re.range "0" "9"))) (str.to.re "0")) (re.opt (re.++ re.allchar ((_ re.loop 1 2) (re.range "0" "9"))))) (re.++ (str.to.re "(") (re.opt (str.to.re "$")) (re.union (re.++ (re.range "1" "9") ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.++ (re.range "1" "9") (re.* (re.range "0" "9"))) (str.to.re "0")) (re.opt (re.++ re.allchar ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re ")"))) (str.to.re "\x0a")))))
; Server.*Host\x3a\s+newsSoftActivitypassword\x3B1\x3BOptix
(assert (not (str.in.re X (re.++ (str.to.re "Server") (re.* re.allchar) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "newsSoftActivity\x13password;1;Optix\x0a")))))
; /filename=[^\n]*\x2eoga/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".oga/i\x0a"))))
(check-sat)
