(declare-const X String)
; /filename=[^\n]*\x2em4v/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".m4v/i\x0a"))))
; dll\x3F\w+updates\w+Host\x3aSoftwareHost\x3Ajoke
(assert (str.in.re X (re.++ (str.to.re "dll?") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "updates") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:SoftwareHost:joke\x0a"))))
; ^([a-zA-Z0-9]{1,15})$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 15) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a")))))
; /^\/[a-f0-9]{32}\/[a-f0-9]{32}\.jar$/Ui
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re ".jar/Ui\x0a"))))
; Client\d+Subject\x3AisBysooTBwhenu\x2EcomToolbar
(assert (not (str.in.re X (re.++ (str.to.re "Client") (re.+ (re.range "0" "9")) (str.to.re "Subject:isBysooTBwhenu.com\x1bToolbar\x0a")))))
(check-sat)
