(declare-const X String)
; traffbest\x2Ebiz\d+\.compress.*sidebar\.activeshopper\.comaresflashdownloader\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "traffbest.biz") (re.+ (re.range "0" "9")) (str.to.re ".compress") (re.* re.allchar) (str.to.re "sidebar.activeshopper.comaresflashdownloader.com\x0a"))))
; /^\s*?HELO\s+\d[\d\x2e]{500}/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "HELO") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.range "0" "9") ((_ re.loop 500 500) (re.union (re.range "0" "9") (str.to.re "."))) (str.to.re "/\x0a")))))
; User-Agent\x3A\s+\x7D\x7BPort\x3A
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "}{Port:\x0a"))))
; User-Agent\x3a\w+Owner\x3A
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Owner:\x0a")))))
; /\x2f\x24\{\x23[^\x2f{}]+?\}(\.action)?\x2f?$/miU
(assert (not (str.in.re X (re.++ (str.to.re "//${#") (re.+ (re.union (str.to.re "/") (str.to.re "{") (str.to.re "}"))) (str.to.re "}") (re.opt (str.to.re ".action")) (re.opt (str.to.re "/")) (str.to.re "/miU\x0a")))))
(check-sat)
