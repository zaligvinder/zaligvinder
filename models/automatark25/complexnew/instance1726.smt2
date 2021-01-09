(declare-const X String)
; ^[0-9]{5}$
(assert (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "\x0a"))))
; /\r\nLocation\x3a\x20https\x3a\x2f{2}dl\.dropboxusercontent\.com\/[a-zA-Z\d\x2f]{5,32}\/avcheck\.exe\r\n\r\n$/H
(assert (not (str.in.re X (re.++ (str.to.re "/\x0d\x0aLocation: https:") ((_ re.loop 2 2) (str.to.re "/")) (str.to.re "dl.dropboxusercontent.com/") ((_ re.loop 5 32) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "/"))) (str.to.re "/avcheck.exe\x0d\x0a\x0d\x0a/H\x0a")))))
; ^[a-zA-Z_:]+[a-zA-Z_:\-\.\d]*$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re ":"))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re ":") (str.to.re "-") (str.to.re ".") (re.range "0" "9"))) (str.to.re "\x0a"))))
(check-sat)
