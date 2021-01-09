(declare-const X String)
; e2give\.com\s+data2\.activshopper\.com
(assert (str.in.re X (re.++ (str.to.re "e2give.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "data2.activshopper.com\x0a"))))
; ^[\w\.=-]+@[\w\.-]+\.[\w]{2,3}$
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re ".") (str.to.re "=") (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "@") (re.+ (re.union (str.to.re ".") (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ".") ((_ re.loop 2 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a")))))
; /\x2exslt([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.xslt") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; X-Mailer\x3aReferer\x3Asponsor2\.ucmore\.com
(assert (not (str.in.re X (str.to.re "X-Mailer:\x13Referer:sponsor2.ucmore.com\x0a"))))
(check-sat)
