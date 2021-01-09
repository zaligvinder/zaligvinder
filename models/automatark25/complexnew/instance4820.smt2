(declare-const X String)
; ^([A-Z]{0,3})?[ ]?([0-9]{1,3},([0-9]{3},)*[0-9]{3}|[0-9]+)(.[0-9][0-9])?$
(assert (not (str.in.re X (re.++ (re.opt ((_ re.loop 0 3) (re.range "A" "Z"))) (re.opt (str.to.re " ")) (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ",") (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ","))) ((_ re.loop 3 3) (re.range "0" "9"))) (re.+ (re.range "0" "9"))) (re.opt (re.++ re.allchar (re.range "0" "9") (re.range "0" "9"))) (str.to.re "\x0a")))))
; s_sq=aolsnssignin.*LOG\s+Host\x3ASubject\x3Aonline-casino-searcher\.com
(assert (str.in.re X (re.++ (str.to.re "s_sq=aolsnssignin") (re.* re.allchar) (str.to.re "LOG") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Subject:online-casino-searcher.com\x0a"))))
; OS-www\x2Etopadwarereviews\x2Ecommedia\x2Etop-banners\x2EcomSuccessfully\x21
(assert (not (str.in.re X (str.to.re "OS-www.topadwarereviews.commedia.top-banners.comSuccessfully!\x0a"))))
; SbAts\d+dcww\x2Edmcast\x2EcomdistID=
(assert (not (str.in.re X (re.++ (str.to.re "SbAts") (re.+ (re.range "0" "9")) (str.to.re "dcww.dmcast.comdistID=\x0a")))))
(check-sat)
