(declare-const X String)
; X-Mailer\x3A\s+ToolbarScanerX-Mailer\x3AInformation
(assert (str.in.re X (re.++ (str.to.re "X-Mailer:\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ToolbarScanerX-Mailer:\x13Information\x0a"))))
; &#\d{2,5};
(assert (str.in.re X (re.++ (str.to.re "&#") ((_ re.loop 2 5) (re.range "0" "9")) (str.to.re ";\x0a"))))
; Server\s+www\x2Epeer2mail\x2Ecomsubject\x3AfileId\x3d\x5b
(assert (not (str.in.re X (re.++ (str.to.re "Server") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.peer2mail.comsubject:fileId=[\x0a")))))
; /^([a-zA-Z0-9\.\_\-\&]+)@[a-zA-Z0-9]+\.[a-zA-Z]{3}|(.[a-zA-Z]{2}(\.[a-zA-Z]{2}))$/
(assert (str.in.re X (re.union (re.++ (str.to.re "/") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re "_") (str.to.re "-") (str.to.re "&"))) (str.to.re "@") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "A" "Z")))) (re.++ (str.to.re "/\x0a") re.allchar ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re ".") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z")))))))
(check-sat)
