(declare-const X String)
; From\x3A\w+SoftActivity\d+
(assert (not (str.in.re X (re.++ (str.to.re "From:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "SoftActivity\x13") (re.+ (re.range "0" "9")) (str.to.re "\x0a")))))
; ^((67\d{2})|(4\d{3})|(5[1-5]\d{2})|(6011))(-?\s?\d{4}){3}|(3[4,7])\d{2}-?\s?\d{6}-?\s?\d{5}$
(assert (str.in.re X (re.union (re.++ (re.union (re.++ (str.to.re "67") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to.re "4") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to.re "5") (re.range "1" "5") ((_ re.loop 2 2) (re.range "0" "9"))) (str.to.re "6011")) ((_ re.loop 3 3) (re.++ (re.opt (str.to.re "-")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9"))))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re "-")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 6 6) (re.range "0" "9")) (re.opt (str.to.re "-")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "\x0a3") (re.union (str.to.re "4") (str.to.re ",") (str.to.re "7"))))))
; /filename=[^\n]*\x2evisprj/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".visprj/i\x0a"))))
; to=\x2Fezsb\s\x3Ahirmvtg\x2fggqh\.kqhSPYzzzvmkituktgr\x2fetie
(assert (str.in.re X (re.++ (str.to.re "to=/ezsb") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re ":hirmvtg/ggqh.kqh\x1bSPYzzzvmkituktgr/etie\x0a"))))
(check-sat)
