(declare-const X String)
; (?i:[aeiou]+)\B
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re "a") (str.to.re "e") (str.to.re "i") (str.to.re "o") (str.to.re "u"))) (str.to.re "\x0a")))))
; (< *balise[ *>|:(.|\n)*>| (.|\n)*>](.|\n)*</balise *>)
(assert (str.in.re X (re.++ (str.to.re "\x0a<") (re.* (str.to.re " ")) (str.to.re "balise") (re.union (str.to.re " ") (str.to.re "*") (str.to.re ">") (str.to.re "|") (str.to.re ":") (str.to.re "(") (str.to.re ".") (str.to.re "\x0a") (str.to.re ")")) (re.* (re.union re.allchar (str.to.re "\x0a"))) (str.to.re "</balise") (re.* (str.to.re " ")) (str.to.re ">"))))
; ^[http|ftp|wap|https]{3,5}:\//\www\.\w*\.[com|net]{2,3}$
(assert (str.in.re X (re.++ ((_ re.loop 3 5) (re.union (str.to.re "h") (str.to.re "t") (str.to.re "p") (str.to.re "|") (str.to.re "f") (str.to.re "w") (str.to.re "a") (str.to.re "s"))) (str.to.re "://") (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")) (str.to.re "ww.") (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ".") ((_ re.loop 2 3) (re.union (str.to.re "c") (str.to.re "o") (str.to.re "m") (str.to.re "|") (str.to.re "n") (str.to.re "e") (str.to.re "t"))) (str.to.re "\x0a"))))
; (^\*\.[a-zA-Z][a-zA-Z][a-zA-Z]$)|(^\*\.\*$)
(assert (not (str.in.re X (re.union (re.++ (str.to.re "*.") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.union (re.range "a" "z") (re.range "A" "Z")) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "*.*\x0a")))))
(check-sat)
