(declare-const X String)
; ^([1-9]{1}[0-9]{0,7})+((,[1-9]{1}[0-9]{0,7}){0,1})+$
(assert (str.in.re X (re.++ (re.+ (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 7) (re.range "0" "9")))) (re.+ (re.opt (re.++ (str.to.re ",") ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 7) (re.range "0" "9"))))) (str.to.re "\x0a"))))
; Host\x3A\dwww\x2Etrustedsearch\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "www.trustedsearch.com\x0a")))))
; \stoolbar\.anwb\.nl.*Host\x3A
(assert (not (str.in.re X (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "toolbar.anwb.nl") (re.* re.allchar) (str.to.re "Host:\x0a")))))
; asdbiz\x2Ebiz\s+informationHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "asdbiz.biz") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "informationHost:\x0a")))))
(check-sat)
