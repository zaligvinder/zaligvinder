(declare-const X String)
; (?i:[aeiou]+)\B
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re "a") (str.to.re "e") (str.to.re "i") (str.to.re "o") (str.to.re "u"))) (str.to.re "\x0a")))))
; ^([1-9]|1[0-2]|0[1-9]){1}(:[0-5][0-9][ ][aApP][mM]){1}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (re.range "1" "9") (re.++ (str.to.re "1") (re.range "0" "2")) (re.++ (str.to.re "0") (re.range "1" "9")))) ((_ re.loop 1 1) (re.++ (str.to.re ":") (re.range "0" "5") (re.range "0" "9") (str.to.re " ") (re.union (str.to.re "a") (str.to.re "A") (str.to.re "p") (str.to.re "P")) (re.union (str.to.re "m") (str.to.re "M")))) (str.to.re "\x0a")))))
; (< *balise[ *>|:(.|\n)*>| (.|\n)*>](.|\n)*</balise *>)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a<") (re.* (str.to.re " ")) (str.to.re "balise") (re.union (str.to.re " ") (str.to.re "*") (str.to.re ">") (str.to.re "|") (str.to.re ":") (str.to.re "(") (str.to.re ".") (str.to.re "\x0a") (str.to.re ")")) (re.* (re.union re.allchar (str.to.re "\x0a"))) (str.to.re "</balise") (re.* (str.to.re " ")) (str.to.re ">")))))
; ^([\w-]+\.)*?[\w-]+@[\w-]+\.([\w-]+\.)*?[\w]+$
(assert (not (str.in.re X (re.++ (re.* (re.++ (re.+ (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "."))) (re.+ (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "@") (re.+ (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ".") (re.* (re.++ (re.+ (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "."))) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a")))))
(check-sat)
