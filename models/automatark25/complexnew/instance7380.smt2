(declare-const X String)
; ^((\d{3}[- ]\d{3}[- ]\d{2}[- ]\d{2})|(\d{3}[- ]\d{2}[- ]\d{2}[- ]\d{3}))$
(assert (not (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re " ")) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re " ")) ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re " ")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re " ")) ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re " ")) ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re " ")) ((_ re.loop 3 3) (re.range "0" "9")))) (str.to.re "\x0a")))))
; aohobygi\x2fzwiw\s+\+The\+password\+is\x3A
(assert (str.in.re X (re.++ (str.to.re "aohobygi/zwiw") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "+The+password+is:\x0a"))))
; Login\d+dll\x3FHOST\x3Acontains
(assert (str.in.re X (re.++ (str.to.re "Login") (re.+ (re.range "0" "9")) (str.to.re "dll?HOST:contains\x0a"))))
; Host\x3A\s+Basic\s+\.htaServerTheef2
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Basic") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ".htaServerTheef2\x0a")))))
(check-sat)
