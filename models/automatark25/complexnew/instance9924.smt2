(declare-const X String)
; InformationSubject\x3ASpynovabyBlacksnprtz\x7CdialnoSearch
(assert (str.in.re X (str.to.re "InformationSubject:SpynovabyBlacksnprtz|dialnoSearch\x0a")))
; ^/{1}(((/{1}\.{1})?[a-zA-Z0-9 ]+/?)+(\.{1}[a-zA-Z0-9]{2,4})?)$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (str.to.re "/")) (str.to.re "\x0a") (re.+ (re.++ (re.opt (re.++ ((_ re.loop 1 1) (str.to.re "/")) ((_ re.loop 1 1) (str.to.re ".")))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re " "))) (re.opt (str.to.re "/")))) (re.opt (re.++ ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 2 4) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))))))
; /^\/[0-9]{5}\.jar$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re ".jar/U\x0a"))))
; (\d{2}\.\d{3}\.\d{3}\/\d{4}\-\d{2})|(\d{3}\.\d{3}\.\d{3}\-\d{2})
(assert (str.in.re X (re.union (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to.re "\x0a") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9"))))))
(check-sat)
