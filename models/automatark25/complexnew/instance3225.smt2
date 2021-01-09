(declare-const X String)
; /[a-z\d\x2f\x2b\x3d]{100,300}/Pi
(assert (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 100 300) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "/") (str.to.re "+") (str.to.re "="))) (str.to.re "/Pi\x0a"))))
; ^\d*[1-9]\d*$
(assert (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.range "1" "9") (re.* (re.range "0" "9")) (str.to.re "\x0a"))))
; ^[1-9]\d$
(assert (not (str.in.re X (re.++ (re.range "1" "9") (re.range "0" "9") (str.to.re "\x0a")))))
; (\bR(\.|)R(\.|)|RURAL\s{0,}(ROUTE|RT(\.|)))\s{0,}\d{1,}(,|)\s{1,}\bBOX\s{0,}\d
(assert (not (str.in.re X (re.++ (re.union (str.to.re "R.R.") (re.++ (str.to.re "RURAL") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "R") (re.union (str.to.re "OUTE") (str.to.re "T.")))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.+ (re.range "0" "9")) (str.to.re ",") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "BOX") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.range "0" "9") (str.to.re "\x0a")))))
; ^[^<>`~!/@\#},.?"-$%:;)(_ ^{&*=|'+]+$
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re "<") (str.to.re ">") (str.to.re "`") (str.to.re "~") (str.to.re "!") (str.to.re "/") (str.to.re "@") (str.to.re "#") (str.to.re "}") (str.to.re ",") (str.to.re ".") (str.to.re "?") (re.range "\x22" "$") (str.to.re "%") (str.to.re ":") (str.to.re ";") (str.to.re ")") (str.to.re "(") (str.to.re "_") (str.to.re " ") (str.to.re "^") (str.to.re "{") (str.to.re "&") (str.to.re "*") (str.to.re "=") (str.to.re "|") (str.to.re "'") (str.to.re "+"))) (str.to.re "\x0a")))))
(check-sat)
