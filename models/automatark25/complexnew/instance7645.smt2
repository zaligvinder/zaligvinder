(declare-const X String)
; ^([0-9]|[1-9][0-9]|[1-9][0-9][0-9])$
(assert (str.in.re X (re.++ (re.union (re.range "0" "9") (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (re.range "1" "9") (re.range "0" "9") (re.range "0" "9"))) (str.to.re "\x0a"))))
; BY\x7D\x7BUser\x3AHost\x3Aconnection\x2E
(assert (str.in.re X (str.to.re "BY}{User:Host:connection.\x0a")))
; ^(smtp)\.([\w\-]+)\.[\w\-]{2,3}$
(assert (str.in.re X (re.++ (str.to.re "smtp.") (re.+ (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ".") ((_ re.loop 2 3) (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a"))))
; /http:\\/\/\.?video.google.\w{2,3}\/videoplay\?docid=([a-z0-9-_]+)/i
(assert (not (str.in.re X (re.++ (str.to.re "/http:\x5c//") (re.opt (str.to.re ".")) (str.to.re "video") re.allchar (str.to.re "google") re.allchar ((_ re.loop 2 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "/videoplay?docid=") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-") (str.to.re "_"))) (str.to.re "/i\x0a")))))
(check-sat)
