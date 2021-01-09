(declare-const X String)
; (http://|)(www\.)?([^\.]+)\.(\w{2}|(com|net|org|edu|int|mil|gov|arpa|biz|aero|name|coop|info|pro|museum))$
(assert (not (str.in.re X (re.++ (str.to.re "http://") (re.opt (str.to.re "www.")) (re.+ (re.comp (str.to.re "."))) (str.to.re ".") (re.union ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "com") (str.to.re "net") (str.to.re "org") (str.to.re "edu") (str.to.re "int") (str.to.re "mil") (str.to.re "gov") (str.to.re "arpa") (str.to.re "biz") (str.to.re "aero") (str.to.re "name") (str.to.re "coop") (str.to.re "info") (str.to.re "pro") (str.to.re "museum")) (str.to.re "\x0a")))))
; ^([1-9]{1}[0-9]{0,7})+((,[1-9]{1}[0-9]{0,7}){0,1})+$
(assert (not (str.in.re X (re.++ (re.+ (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 7) (re.range "0" "9")))) (re.+ (re.opt (re.++ (str.to.re ",") ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 7) (re.range "0" "9"))))) (str.to.re "\x0a")))))
; www\x2Epcsentinelsoftware\x2Ecom
(assert (not (str.in.re X (str.to.re "www.pcsentinelsoftware.com\x0a"))))
(check-sat)
