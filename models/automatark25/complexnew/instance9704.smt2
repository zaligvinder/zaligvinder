(declare-const X String)
; Host\x3A\d+rprpgbnrppb\x2fci[^\n\r]*RXFilteredDmInf\x5E
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "rprpgbnrppb/ci") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "RXFilteredDmInf^\x0a")))))
; (\bR(\.|)R(\.|)|RURAL\s{0,}(ROUTE|RT(\.|)))\s{0,}\d{1,}(,|)\s{1,}\bBOX\s{0,}\d
(assert (not (str.in.re X (re.++ (re.union (str.to.re "R.R.") (re.++ (str.to.re "RURAL") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "R") (re.union (str.to.re "OUTE") (str.to.re "T.")))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.+ (re.range "0" "9")) (str.to.re ",") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "BOX") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.range "0" "9") (str.to.re "\x0a")))))
(check-sat)
