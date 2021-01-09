(declare-const X String)
; Host\x3A\s+Boss\s+media\x2Etop-banners\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Boss") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "media.top-banners.com\x0a"))))
; /\/14\d{8}(.jar)?$/U
(assert (str.in.re X (re.++ (str.to.re "//14") ((_ re.loop 8 8) (re.range "0" "9")) (re.opt (re.++ re.allchar (str.to.re "jar"))) (str.to.re "/U\x0a"))))
; (/\*[\d\D]*?\*/)|(\/\*(\s*|.*?)*\*\/)|(\/\/.*)|(/\\*[\\d\\D]*?\\*/)|([\r\n ]*//[^\r\n]*)+
(assert (not (str.in.re X (re.union (re.++ (str.to.re "/*") (re.* (re.union (re.range "0" "9") (re.comp (re.range "0" "9")))) (str.to.re "*/")) (re.++ (str.to.re "/*") (re.* (re.union (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* re.allchar))) (str.to.re "*/")) (re.++ (str.to.re "//") (re.* re.allchar)) (re.++ (str.to.re "/") (re.* (str.to.re "\x5c")) (re.* (re.union (str.to.re "\x5c") (str.to.re "d") (str.to.re "D"))) (re.* (str.to.re "\x5c")) (str.to.re "/")) (re.++ (re.+ (re.++ (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a") (str.to.re " "))) (str.to.re "//") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))))) (str.to.re "\x0a"))))))
; ^.{2,}$
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 2 2) re.allchar) (re.* re.allchar))))
(check-sat)
