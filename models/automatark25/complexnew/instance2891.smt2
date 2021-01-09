(declare-const X String)
; /\x2emswmm([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.mswmm") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; to=.*JMail\d+HXDownloadasdbiz\x2EbizUser-Agent\x3Awww\x2Eezula\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "to=") (re.* re.allchar) (str.to.re "JMail") (re.+ (re.range "0" "9")) (str.to.re "HXDownloadasdbiz.bizUser-Agent:www.ezula.com\x0a")))))
; /^\x3cmeta\x20name\x3d\x22token\x22\x20content\x3d\x22\xa4[A-F\d]{168}\xa4\x22\x2f\x3e$/
(assert (str.in.re X (re.++ (str.to.re "/<meta name=\x22token\x22 content=\x22\xa4") ((_ re.loop 168 168) (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "\xa4\x22/>/\x0a"))))
; ^(([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5}){1,25})+([;.](([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5}){1,25})+)*$
(assert (str.in.re X (re.++ (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re "."))) (str.to.re "@") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re "."))) (str.to.re ".") ((_ re.loop 1 25) ((_ re.loop 2 5) (re.union (re.range "a" "z") (re.range "A" "Z")))))) (re.* (re.++ (re.union (str.to.re ";") (str.to.re ".")) (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re "."))) (str.to.re "@") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re "."))) (str.to.re ".") ((_ re.loop 1 25) ((_ re.loop 2 5) (re.union (re.range "a" "z") (re.range "A" "Z")))))))) (str.to.re "\x0a"))))
(check-sat)
