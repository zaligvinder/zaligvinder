(declare-const X String)
; ^(((\(\d{3}\)|\d{3})( |-|\.))|(\(\d{3}\)|\d{3}))?\d{3}( |-|\.)?\d{4}(( |-|\.)?([Ee]xt|[Xx])[.]?( |-|\.)?\d{4})?$
(assert (not (str.in.re X (re.++ (re.opt (re.union (re.++ (re.union (re.++ (str.to.re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ")")) ((_ re.loop 3 3) (re.range "0" "9"))) (re.union (str.to.re " ") (str.to.re "-") (str.to.re "."))) (re.++ (str.to.re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ")")) ((_ re.loop 3 3) (re.range "0" "9")))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "-") (str.to.re "."))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.++ (re.opt (re.union (str.to.re " ") (str.to.re "-") (str.to.re "."))) (re.union (re.++ (re.union (str.to.re "E") (str.to.re "e")) (str.to.re "xt")) (str.to.re "X") (str.to.re "x")) (re.opt (str.to.re ".")) (re.opt (re.union (str.to.re " ") (str.to.re "-") (str.to.re "."))) ((_ re.loop 4 4) (re.range "0" "9")))) (str.to.re "\x0a")))))
; /\x2epptx([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.pptx") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; \x2Frssupdate\.cgiToolbarsearch\.dropspam\.com
(assert (str.in.re X (str.to.re "/rssupdate.cgiToolbarsearch.dropspam.com\x0a")))
; ^[A-Z]{3}-[0-9]{4}$
(assert (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; /\x2f\?[0-9a-f]{60,66}[\x3b\d]*$/U
(assert (not (str.in.re X (re.++ (str.to.re "//?") ((_ re.loop 60 66) (re.union (re.range "0" "9") (re.range "a" "f"))) (re.* (re.union (str.to.re ";") (re.range "0" "9"))) (str.to.re "/U\x0a")))))
(check-sat)
