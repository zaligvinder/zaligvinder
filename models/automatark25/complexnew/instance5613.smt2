(declare-const X String)
; \x2Easpx\s+www\x2Ealtnet\x2EcomSubject\x3A
(assert (str.in.re X (re.++ (str.to.re ".aspx") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.altnet.com\x1bSubject:\x0a"))))
; /\.(jsp|html)\?[^\r\n]*PG=SPEEDBAR/Ui
(assert (str.in.re X (re.++ (str.to.re "/.") (re.union (str.to.re "jsp") (str.to.re "html")) (str.to.re "?") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "PG=SPEEDBAR/Ui\x0a"))))
; ((\(\d{3,4}\)|\d{3,4}-)\d{4,9}(-\d{1,5}|\d{0}))|(\d{4,12})
(assert (not (str.in.re X (re.union (re.++ (re.union (re.++ (str.to.re "(") ((_ re.loop 3 4) (re.range "0" "9")) (str.to.re ")")) (re.++ ((_ re.loop 3 4) (re.range "0" "9")) (str.to.re "-"))) ((_ re.loop 4 9) (re.range "0" "9")) (re.union (re.++ (str.to.re "-") ((_ re.loop 1 5) (re.range "0" "9"))) ((_ re.loop 0 0) (re.range "0" "9")))) (re.++ ((_ re.loop 4 12) (re.range "0" "9")) (str.to.re "\x0a"))))))
; /\x2exsl([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.xsl") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
