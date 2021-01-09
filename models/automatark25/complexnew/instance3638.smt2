(declare-const X String)
; /^stop\x7c\d+\x7c\d+\x7C[a-z0-9]+\x2E[a-z]{2,3}\x7C[a-z0-9]+\x7C/
(assert (not (str.in.re X (re.++ (str.to.re "/stop|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 2 3) (re.range "a" "z")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "|/\x0a")))))
; cdpViewWatcher\x2Fcgi\x2Flogurl\.cgiwww\x2Ebydou\x2Ecom
(assert (str.in.re X (str.to.re "cdpViewWatcher/cgi/logurl.cgiwww.bydou.com\x0a")))
; ^(([0-1]?[1-9]|2[0-3])(:)([0-5][0-9]))$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (re.opt (re.range "0" "1")) (re.range "1" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re ":") (re.range "0" "5") (re.range "0" "9"))))
; ^((\.)?([a-zA-Z0-9_-]?)(\.)?([a-zA-Z0-9_-]?)(\.)?)+$
(assert (str.in.re X (re.++ (re.+ (re.++ (re.opt (str.to.re ".")) (re.opt (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-"))) (re.opt (str.to.re ".")) (re.opt (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-"))) (re.opt (str.to.re ".")))) (str.to.re "\x0a"))))
(check-sat)
