(declare-const X String)
; actualnames\.comclient\x2Ebaigoo\x2Ecomzzzvmkituktgr\x2fetiexpsp2-InformationHost\x3A
(assert (str.in.re X (str.to.re "actualnames.comclient.baigoo.comzzzvmkituktgr/etiexpsp2-InformationHost:\x0a")))
; User-Agent\x3a\s+sErver\s+-~-GREATHost\x3a
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "sErver") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "-~-GREATHost:\x0a"))))
; ^(\$|)([1-9]+\d{0,2}(\,\d{3})*|([1-9]+\d*))(\.\d{2})?$
(assert (not (str.in.re X (re.++ (str.to.re "$") (re.union (re.++ (re.+ (re.range "1" "9")) ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
