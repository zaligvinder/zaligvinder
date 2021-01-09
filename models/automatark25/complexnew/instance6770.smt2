(declare-const X String)
; /^(\/\d{8,11})?(\/\d)?\/1[34]\d{8}\.htm$/U
(assert (str.in.re X (re.++ (str.to.re "/") (re.opt (re.++ (str.to.re "/") ((_ re.loop 8 11) (re.range "0" "9")))) (re.opt (re.++ (str.to.re "/") (re.range "0" "9"))) (str.to.re "/1") (re.union (str.to.re "3") (str.to.re "4")) ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re ".htm/U\x0a"))))
; max-\s+\x2Fbar_pl\x2Ffav\.fcgi
(assert (str.in.re X (re.++ (str.to.re "max-") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/bar_pl/fav.fcgi\x0a"))))
; http://[^/]*/
(assert (str.in.re X (re.++ (str.to.re "http://") (re.* (re.comp (str.to.re "/"))) (str.to.re "/\x0a"))))
; /filename=[^\n]*\x2edws/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".dws/i\x0a")))))
; actualnames\.comclient\x2Ebaigoo\x2Ecomzzzvmkituktgr\x2fetiexpsp2-InformationHost\x3A
(assert (not (str.in.re X (str.to.re "actualnames.comclient.baigoo.comzzzvmkituktgr/etiexpsp2-InformationHost:\x0a"))))
(check-sat)
