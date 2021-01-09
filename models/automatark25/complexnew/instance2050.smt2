(declare-const X String)
; /^\/[0-9]{5}\.jar$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re ".jar/U\x0a")))))
; /filename=[^\n]*\x2ehpj/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".hpj/i\x0a")))))
; ^(|(0\d)|(1[0-2])):(([0-5]\d)):(([0-5]\d))\s([AP]M)$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "::") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "\x0a") (re.range "0" "5") (re.range "0" "9") (re.range "0" "5") (re.range "0" "9") (re.union (str.to.re "A") (str.to.re "P")) (str.to.re "M"))))
; ^1?[-\. ]?(\(\d{3}\)?[-\. ]?|\d{3}?[-\. ]?)?\d{3}?[-\. ]?\d{4}$
(assert (str.in.re X (re.++ (re.opt (str.to.re "1")) (re.opt (re.union (str.to.re "-") (str.to.re ".") (str.to.re " "))) (re.opt (re.union (re.++ (str.to.re "(") ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re ")")) (re.opt (re.union (str.to.re "-") (str.to.re ".") (str.to.re " ")))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re ".") (str.to.re " ")))))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re ".") (str.to.re " "))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; (-?(\d*\.\d{1}?\d*|\d{1,}))
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.opt (str.to.re "-")) (re.union (re.++ (re.* (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 1) (re.range "0" "9")) (re.* (re.range "0" "9"))) (re.+ (re.range "0" "9"))))))
(check-sat)
