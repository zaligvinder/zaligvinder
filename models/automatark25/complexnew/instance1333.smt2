(declare-const X String)
; ^(\+|-)?\d+$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))
; /"(\\["\\]|[^"])*("|$)|'(\\['\\]|[^'])*('|$)|(\\["'\\]|[^\s"'])+/g
(assert (str.in.re X (re.union (re.++ (str.to.re "/\x22") (re.* (re.union (re.++ (str.to.re "\x5c") (re.union (str.to.re "\x22") (str.to.re "\x5c"))) (re.comp (str.to.re "\x22")))) (str.to.re "\x22")) (re.++ (str.to.re "'") (re.* (re.union (re.++ (str.to.re "\x5c") (re.union (str.to.re "'") (str.to.re "\x5c"))) (re.comp (str.to.re "'")))) (str.to.re "'")) (re.++ (re.+ (re.union (re.++ (str.to.re "\x5c") (re.union (str.to.re "\x22") (str.to.re "'") (str.to.re "\x5c"))) (str.to.re "\x22") (str.to.re "'") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/g\x0a")))))
; ^[a-zA-Z0-9\-\.]+\.(com|org|net|mil|edu|COM|ORG|NET|MIL|EDU)$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-") (str.to.re "."))) (str.to.re ".") (re.union (str.to.re "com") (str.to.re "org") (str.to.re "net") (str.to.re "mil") (str.to.re "edu") (str.to.re "COM") (str.to.re "ORG") (str.to.re "NET") (str.to.re "MIL") (str.to.re "EDU")) (str.to.re "\x0a")))))
(check-sat)
