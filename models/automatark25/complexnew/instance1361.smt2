(declare-const X String)
; ^(\+?36)?[ -]?(\d{1,2}|(\(\d{1,2}\)))/?([ -]?\d){6,7}$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "+")) (str.to.re "36"))) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) (re.union ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to.re "(") ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re ")"))) (re.opt (str.to.re "/")) ((_ re.loop 6 7) (re.++ (re.opt (re.union (str.to.re " ") (str.to.re "-"))) (re.range "0" "9"))) (str.to.re "\x0a")))))
; downloadfile\x2eorg\w+com\x3EHost\x3A
(assert (str.in.re X (re.++ (str.to.re "downloadfile.org") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "com>Host:\x0a"))))
; rprpgbnrppb\x2fci\d\x2ElStopperHost\x3AHost\x3aclvompycem\x2fcen\.vcn
(assert (str.in.re X (re.++ (str.to.re "rprpgbnrppb/ci") (re.range "0" "9") (str.to.re ".lStopperHost:Host:clvompycem/cen.vcn\x0a"))))
; [0-9][0-9][0-9][0-9]-(0[1-9]|1[0-2])-(0[1-9]|1[0-9]|2[0-9]|3[0-1])\s{1}(0[0-9]|1[0-9]|2[0-3]):([0-5][0-9])
(assert (not (str.in.re X (re.++ (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (str.to.re "-") (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "-") (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "1"))) ((_ re.loop 1 1) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re ":\x0a") (re.range "0" "5") (re.range "0" "9")))))
(check-sat)
