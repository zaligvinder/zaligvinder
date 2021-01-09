(declare-const X String)
; ad\x2Esearchsquire\x2Ecom[^\n\r]*User-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "ad.searchsquire.com") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "User-Agent:\x0a"))))
; /filename=[^\n]*\x2ewri/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wri/i\x0a")))))
; Referer\x3AHost\x3AHost\x3ASubject\x3Aonline-casino-searcher\.comnetid=Excite
(assert (not (str.in.re X (str.to.re "Referer:Host:Host:Subject:online-casino-searcher.comnetid=Excite\x0a"))))
; ^((19[0-9][0-9])|(20[0-1][0-5]))\-((0?[1-9])|(1[0-2]))\-((0?[1-9])|([1-2][0-9])|(3[0-1]))$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "19") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "20") (re.range "0" "1") (re.range "0" "5"))) (str.to.re "-") (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "-") (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.range "1" "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "1"))) (str.to.re "\x0a")))))
; (^([1-3]{1}[0-9]{0,}(\.[0-9]{1})?|0(\.[0-9]{1})?|[4]{1}[0-9]{0,}(\.[0]{1})?|5(\.[5]{1}))$)
(assert (not (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 1 1) (re.range "1" "3")) (re.* (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 1) (re.range "0" "9"))))) (re.++ (str.to.re "0") (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 1) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 1) (str.to.re "4")) (re.* (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 1) (str.to.re "0"))))) (re.++ (str.to.re "5.") ((_ re.loop 1 1) (str.to.re "5")))) (str.to.re "\x0a")))))
(check-sat)
