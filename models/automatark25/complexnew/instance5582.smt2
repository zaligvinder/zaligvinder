(declare-const X String)
; /filename=[^\n]*\x2egif/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".gif/i\x0a"))))
; max-\s+\x2Fbar_pl\x2Ffav\.fcgi
(assert (not (str.in.re X (re.++ (str.to.re "max-") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/bar_pl/fav.fcgi\x0a")))))
; (^[0-9]{2,3}\.[0-9]{3}\.[0-9]{3}\/[0-9]{4}-[0-9]{2}$)
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 2 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")))))
(check-sat)
