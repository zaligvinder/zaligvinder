(declare-const X String)
; <title>(.*?)</title>
(assert (not (str.in.re X (re.++ (str.to.re "<title>") (re.* re.allchar) (str.to.re "</title>\x0a")))))
; /\x2empeg([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.mpeg") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; ^[a-zA-Z0-9\-\.]+\.(com|org|net|mil|edu|COM|ORG|NET|MIL|EDU)$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-") (str.to.re "."))) (str.to.re ".") (re.union (str.to.re "com") (str.to.re "org") (str.to.re "net") (str.to.re "mil") (str.to.re "edu") (str.to.re "COM") (str.to.re "ORG") (str.to.re "NET") (str.to.re "MIL") (str.to.re "EDU")) (str.to.re "\x0a"))))
; ^(100([\.\,]0{1,2})?)|(\d{1,2}[\.\,]\d{1,2})|(\d{0,2})$
(assert (str.in.re X (re.union (re.++ (str.to.re "100") (re.opt (re.++ (re.union (str.to.re ".") (str.to.re ",")) ((_ re.loop 1 2) (str.to.re "0"))))) (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.union (str.to.re ".") (str.to.re ",")) ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^([0-9]{4})([0-9]{5})([0-9]{1})$
(assert (not (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 5 5) (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
