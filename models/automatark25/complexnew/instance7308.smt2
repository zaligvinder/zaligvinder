(declare-const X String)
; AD\s+c\.goclick\.com\w+asdbiz\x2Ebizfrom\x7croogoo\x7cCurrent
(assert (not (str.in.re X (re.++ (str.to.re "AD") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "c.goclick.com") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "asdbiz.bizfrom|roogoo|Current\x0a")))))
; ^[a-zA-Z]\:\\.*|^\\\\.*
(assert (str.in.re X (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re ":\x5c") (re.* re.allchar)) (re.++ (str.to.re "\x5c\x5c") (re.* re.allchar) (str.to.re "\x0a")))))
; (^\d{1,5}$|^\d{1,5}\.\d{1,2}$)
(assert (not (str.in.re X (re.++ (re.union ((_ re.loop 1 5) (re.range "0" "9")) (re.++ ((_ re.loop 1 5) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
; dialupvpn\x5fpwd\d\<title\>Actual\sSpywareStrike\s+fowclxccdxn\x2fuxwn\.ddywww\x2evirusprotectpro\x2ecom
(assert (str.in.re X (re.++ (str.to.re "dialupvpn_pwd") (re.range "0" "9") (str.to.re "<title>Actual") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "SpywareStrike") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "fowclxccdxn/uxwn.ddywww.virusprotectpro.com\x0a"))))
; (^\d{1,3}([,]\d{3})*$)|(^\d{1,16}$)
(assert (not (str.in.re X (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 16) (re.range "0" "9")) (str.to.re "\x0a"))))))
(check-sat)
