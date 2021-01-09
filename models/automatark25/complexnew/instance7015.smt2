(declare-const X String)
; www\x2Eezula\x2Ecom.*com[^\n\r]*SpyBuddy
(assert (str.in.re X (re.++ (str.to.re "www.ezula.com") (re.* re.allchar) (str.to.re "com") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "SpyBuddy\x0a"))))
; /^\/\/?[a-z0-9_]{7,8}\/\??[0-9a-f]{60,68}[\x3b\x2c\d+]*$/U
(assert (str.in.re X (re.++ (str.to.re "//") (re.opt (str.to.re "/")) ((_ re.loop 7 8) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "_"))) (str.to.re "/") (re.opt (str.to.re "?")) ((_ re.loop 60 68) (re.union (re.range "0" "9") (re.range "a" "f"))) (re.* (re.union (str.to.re ";") (str.to.re ",") (re.range "0" "9") (str.to.re "+"))) (str.to.re "/U\x0a"))))
; /filename=[a-z]{5,8}\d{2,3}\.swf\x0d\x0a/Hm
(assert (str.in.re X (re.++ (str.to.re "/filename=") ((_ re.loop 5 8) (re.range "a" "z")) ((_ re.loop 2 3) (re.range "0" "9")) (str.to.re ".swf\x0d\x0a/Hm\x0a"))))
; actualnames\.comclient\x2Ebaigoo\x2Ecomzzzvmkituktgr\x2fetiexpsp2-InformationHost\x3A
(assert (str.in.re X (str.to.re "actualnames.comclient.baigoo.comzzzvmkituktgr/etiexpsp2-InformationHost:\x0a")))
(check-sat)
