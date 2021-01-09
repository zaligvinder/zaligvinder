(declare-const X String)
; /^[oz]/Ri
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "o") (str.to.re "z")) (str.to.re "/Ri\x0a")))))
; wjpropqmlpohj\x2flo\s+media\x2Edxcdirect\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "wjpropqmlpohj/lo") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "media.dxcdirect.com\x0a")))))
; actualnames\.comclient\x2Ebaigoo\x2Ecomzzzvmkituktgr\x2fetiexpsp2-InformationHost\x3A
(assert (not (str.in.re X (str.to.re "actualnames.comclient.baigoo.comzzzvmkituktgr/etiexpsp2-InformationHost:\x0a"))))
; /\x2fib2\x2f$/U
(assert (str.in.re X (str.to.re "//ib2//U\x0a")))
; (0[289][0-9]{2})|([1345689][0-9]{3})|(2[0-8][0-9]{2})|(290[0-9])|(291[0-4])|(7[0-4][0-9]{2})|(7[8-9][0-9]{2})
(assert (not (str.in.re X (re.union (re.++ (str.to.re "0") (re.union (str.to.re "2") (str.to.re "8") (str.to.re "9")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.union (str.to.re "1") (str.to.re "3") (str.to.re "4") (str.to.re "5") (str.to.re "6") (str.to.re "8") (str.to.re "9")) ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to.re "2") (re.range "0" "8") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to.re "290") (re.range "0" "9")) (re.++ (str.to.re "291") (re.range "0" "4")) (re.++ (str.to.re "7") (re.range "0" "4") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to.re "\x0a7") (re.range "8" "9") ((_ re.loop 2 2) (re.range "0" "9")))))))
(check-sat)
