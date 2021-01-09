(declare-const X String)
; toolsbar\x2Ekuaiso\x2Ecom\d\x2Fbar_pl\x2Fchk_bar\.fcgi
(assert (str.in.re X (re.++ (str.to.re "toolsbar.kuaiso.com") (re.range "0" "9") (str.to.re "/bar_pl/chk_bar.fcgi\x0a"))))
; http[s]?://(www|[a-zA-Z]{2}-[a-zA-Z]{2})\.facebook\.com/(pages/[a-zA-Z0-9\.-]+/[0-9]+|[a-zA-Z0-9\.-]+)[/]?$
(assert (str.in.re X (re.++ (str.to.re "http") (re.opt (str.to.re "s")) (str.to.re "://") (re.union (str.to.re "www") (re.++ ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "-") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))))) (str.to.re ".facebook.com/") (re.union (re.++ (str.to.re "pages/") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re "-"))) (str.to.re "/") (re.+ (re.range "0" "9"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re "-")))) (re.opt (str.to.re "/")) (str.to.re "\x0a"))))
(check-sat)
