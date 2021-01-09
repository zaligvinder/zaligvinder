(declare-const X String)
; /\x2f(css|upload)\x2f[a-z]{2}[0-9]{3}\x2eccs/U
(assert (not (str.in.re X (re.++ (str.to.re "//") (re.union (str.to.re "css") (str.to.re "upload")) (str.to.re "/") ((_ re.loop 2 2) (re.range "a" "z")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".ccs/U\x0a")))))
; dialupvpn\x5fpwd\x2Fiis2ebs\.aspOn-Line\x2E\x2E\x2EReport\x2Fnewsurfer4\x2FURLAuthorization\x3a
(assert (not (str.in.re X (str.to.re "dialupvpn_pwd/iis2ebs.aspOn-Line...Report/newsurfer4/URLAuthorization:\x0a"))))
; /META-INF.*?[a-zA-Z]{7}\.class/smi
(assert (not (str.in.re X (re.++ (str.to.re "/META-INF") (re.* re.allchar) ((_ re.loop 7 7) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re ".class/smi\x0a")))))
; ^[ \w\.]{3,}([A-Za-z]\.)?([ \w]*\##\d+)?(\r\n| )[ \w]{3,},\x20([A-Z]{2}\.)\x20\d{5}(-\d{4})?$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.union (re.range "A" "Z") (re.range "a" "z")) (str.to.re "."))) (re.opt (re.++ (re.* (re.union (str.to.re " ") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "##") (re.+ (re.range "0" "9")))) (re.union (str.to.re "\x0d\x0a") (str.to.re " ")) (str.to.re ",  ") ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.++ (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")))) (str.to.re "\x0a") ((_ re.loop 3 3) (re.union (str.to.re " ") (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.union (str.to.re " ") (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) ((_ re.loop 3 3) (re.union (str.to.re " ") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.union (str.to.re " ") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) ((_ re.loop 2 2) (re.range "A" "Z")) (str.to.re ".")))))
(check-sat)
