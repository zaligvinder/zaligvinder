(declare-const X String)
; ^((67\d{2})|(4\d{3})|(5[1-5]\d{2})|(6011))(-?\s?\d{4}){3}|(3[4,7])\d{2}-?\s?\d{6}-?\s?\d{5}$
(assert (str.in.re X (re.union (re.++ (re.union (re.++ (str.to.re "67") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to.re "4") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to.re "5") (re.range "1" "5") ((_ re.loop 2 2) (re.range "0" "9"))) (str.to.re "6011")) ((_ re.loop 3 3) (re.++ (re.opt (str.to.re "-")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9"))))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re "-")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 6 6) (re.range "0" "9")) (re.opt (str.to.re "-")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "\x0a3") (re.union (str.to.re "4") (str.to.re ",") (str.to.re "7"))))))
; forum=From\x3acomTencentTravelerBackAtTaCkExplorer
(assert (str.in.re X (str.to.re "forum=From:comTencentTravelerBackAtTaCkExplorer\x0a")))
; Host\x3a\s+Agentbody=\x2521\x2521\x2521OptixSubject\x3A
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Agentbody=%21%21%21Optix\x13Subject:\x0a"))))
(check-sat)
