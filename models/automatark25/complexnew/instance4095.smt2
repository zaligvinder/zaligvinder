(declare-const X String)
; ^(\+?36)?[ -]?(\d{1,2}|(\(\d{1,2}\)))/?([ -]?\d){6,7}$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "+")) (str.to.re "36"))) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) (re.union ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to.re "(") ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re ")"))) (re.opt (str.to.re "/")) ((_ re.loop 6 7) (re.++ (re.opt (re.union (str.to.re " ") (str.to.re "-"))) (re.range "0" "9"))) (str.to.re "\x0a")))))
; DA\dwww\x2Ee-finder\x2Ecc.*User-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "DA") (re.range "0" "9") (str.to.re "www.e-finder.cc") (re.* re.allchar) (str.to.re "User-Agent:\x0a"))))
; SI\|Server\|\d+informationWinInetEvilFTPOSSProxy\x5Chome\/lordofsearch
(assert (not (str.in.re X (re.++ (str.to.re "SI|Server|\x13") (re.+ (re.range "0" "9")) (str.to.re "informationWinInetEvilFTPOSSProxy\x5chome/lordofsearch\x0a")))))
; ^([1-9]+\d{0,2},(\d{3},)*\d{3}(\.\d{1,2})?|[1-9]+\d*(\.\d{1,2})?)$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.+ (re.range "1" "9")) ((_ re.loop 0 2) (re.range "0" "9")) (str.to.re ",") (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ","))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9"))))) (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))))) (str.to.re "\x0a")))))
; /[^imsxeADSUXu]([imsxeADSUXu]*)$/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "i") (str.to.re "m") (str.to.re "s") (str.to.re "x") (str.to.re "e") (str.to.re "A") (str.to.re "D") (str.to.re "S") (str.to.re "U") (str.to.re "X") (str.to.re "u")) (re.* (re.union (str.to.re "i") (str.to.re "m") (str.to.re "s") (str.to.re "x") (str.to.re "e") (str.to.re "A") (str.to.re "D") (str.to.re "S") (str.to.re "U") (str.to.re "X") (str.to.re "u"))) (str.to.re "/\x0a")))))
(check-sat)
