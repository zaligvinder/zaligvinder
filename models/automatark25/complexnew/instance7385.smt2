(declare-const X String)
; /\x2fpanda\x2f\x3fu\x3d[a-z0-9]{32}/U
(assert (str.in.re X (re.++ (str.to.re "//panda/?u=") ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "/U\x0a"))))
; [a-zA-Z]{3,}://[a-zA-Z0-9\.]+/*[a-zA-Z0-9/\\%_.]*\?*[a-zA-Z0-9/\\%_.=&]*
(assert (not (str.in.re X (re.++ (str.to.re "://") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "."))) (re.* (str.to.re "/")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "/") (str.to.re "\x5c") (str.to.re "%") (str.to.re "_") (str.to.re "."))) (re.* (str.to.re "?")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "/") (str.to.re "\x5c") (str.to.re "%") (str.to.re "_") (str.to.re ".") (str.to.re "=") (str.to.re "&"))) (str.to.re "\x0a") ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z")))))))
; WebsiteUser-Agent\x3Ahttphostfast-look\x2Ecom
(assert (not (str.in.re X (str.to.re "WebsiteUser-Agent:httphostfast-look.com\x0a"))))
(check-sat)
