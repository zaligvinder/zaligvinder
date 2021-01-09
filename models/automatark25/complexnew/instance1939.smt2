(declare-const X String)
; \x28BDLL\x29\s+CD\x2F.*Host\x3A
(assert (not (str.in.re X (re.++ (str.to.re "(BDLL)\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "CD/") (re.* re.allchar) (str.to.re "Host:\x0a")))))
; ^([(]?[+]{1}[0-9]{1,3}[)]?[ .\-]?)?[(]?[0-9]{3}[)]?[ .\-]?([0-9]{3}[ .\-]?[0-9]{4}|[a-zA-Z0-9]{7})([ .\-]?[/]{1}[ .\-]?[0-9]{2,4})?$
(assert (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "(")) ((_ re.loop 1 1) (str.to.re "+")) ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (str.to.re ")")) (re.opt (re.union (str.to.re " ") (str.to.re ".") (str.to.re "-"))))) (re.opt (str.to.re "(")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re ")")) (re.opt (re.union (str.to.re " ") (str.to.re ".") (str.to.re "-"))) (re.union (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re ".") (str.to.re "-"))) ((_ re.loop 4 4) (re.range "0" "9"))) ((_ re.loop 7 7) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))) (re.opt (re.++ (re.opt (re.union (str.to.re " ") (str.to.re ".") (str.to.re "-"))) ((_ re.loop 1 1) (str.to.re "/")) (re.opt (re.union (str.to.re " ") (str.to.re ".") (str.to.re "-"))) ((_ re.loop 2 4) (re.range "0" "9")))) (str.to.re "\x0a"))))
; \b4[0-9]\b
(assert (not (str.in.re X (re.++ (str.to.re "4") (re.range "0" "9") (str.to.re "\x0a")))))
; Host\x3AYOURcache\x2Eeverer\x2Ecomwww\x2Epurityscan\x2Ecom
(assert (str.in.re X (str.to.re "Host:YOURcache.everer.comwww.purityscan.com\x0a")))
; www\x2Eonlinecasinoextra\x2Ecomsqlads\.grokads\.com
(assert (str.in.re X (str.to.re "www.onlinecasinoextra.comsqlads.grokads.com\x0a")))
(check-sat)
