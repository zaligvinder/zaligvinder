(declare-const X String)
; trackwww\x2Ealfacleaner\x2Ecom
(assert (str.in.re X (str.to.re "trackwww.alfacleaner.com\x0a")))
; /PRIVMSG #new :\x02\x5b(GOOGLE|SCAN)\x5d\x02\x20Scanning/
(assert (not (str.in.re X (re.++ (str.to.re "/PRIVMSG #new :\x02[") (re.union (str.to.re "GOOGLE") (str.to.re "SCAN")) (str.to.re "]\x02 Scanning/\x0a")))))
; [-+]?((\.[0-9]+|[0-9]+\.[0-9]+)([eE][-+][0-9]+)?|[0-9]+)
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.union (re.++ (re.union (re.++ (str.to.re ".") (re.+ (re.range "0" "9"))) (re.++ (re.+ (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9")))) (re.opt (re.++ (re.union (str.to.re "e") (str.to.re "E")) (re.union (str.to.re "-") (str.to.re "+")) (re.+ (re.range "0" "9"))))) (re.+ (re.range "0" "9"))) (str.to.re "\x0a"))))
(check-sat)
