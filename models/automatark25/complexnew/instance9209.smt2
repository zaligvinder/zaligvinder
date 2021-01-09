(declare-const X String)
; ^[a-zA-Z0-9\-\.]+\.(com|org|net|mil|edu|COM|ORG|NET|MIL|EDU)$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-") (str.to.re "."))) (str.to.re ".") (re.union (str.to.re "com") (str.to.re "org") (str.to.re "net") (str.to.re "mil") (str.to.re "edu") (str.to.re "COM") (str.to.re "ORG") (str.to.re "NET") (str.to.re "MIL") (str.to.re "EDU")) (str.to.re "\x0a")))))
; ([A-Z]:\\[^/:\*\?<>\|]+\.\w{2,6})|(\\{2}[^/:\*\?<>\|]+\.\w{2,6})
(assert (not (str.in.re X (re.union (re.++ (re.range "A" "Z") (str.to.re ":\x5c") (re.+ (re.union (str.to.re "/") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "<") (str.to.re ">") (str.to.re "|"))) (str.to.re ".") ((_ re.loop 2 6) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))) (re.++ (str.to.re "\x0a") ((_ re.loop 2 2) (str.to.re "\x5c")) (re.+ (re.union (str.to.re "/") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "<") (str.to.re ">") (str.to.re "|"))) (str.to.re ".") ((_ re.loop 2 6) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))))))
; /\x2fpanda\x2f\x3fu\x3d[a-z0-9]{32}/U
(assert (str.in.re X (re.++ (str.to.re "//panda/?u=") ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "/U\x0a"))))
(check-sat)
