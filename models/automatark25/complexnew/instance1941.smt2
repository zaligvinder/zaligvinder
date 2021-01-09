(declare-const X String)
; dialupvpn\x5fpwd\x2Fiis2ebs\.aspOn-Line\x2E\x2E\x2EReport\x2Fnewsurfer4\x2FURLAuthorization\x3a
(assert (str.in.re X (str.to.re "dialupvpn_pwd/iis2ebs.aspOn-Line...Report/newsurfer4/URLAuthorization:\x0a")))
; ^\$(\d{1,3}(\,\d{3})*|(\d+))(\.\d{2})?$
(assert (not (str.in.re X (re.++ (str.to.re "$") (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.+ (re.range "0" "9"))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2ejfif/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jfif/i\x0a"))))
; ^(((\\\\([^\\/:\*\?"\|<>\. ]+))|([a-zA-Z]:\\))(([^\\/:\*\?"\|<>\. ]*)([\\]*))*)$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (str.to.re "\x5c\x5c") (re.+ (re.union (str.to.re "\x5c") (str.to.re "/") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "\x22") (str.to.re "|") (str.to.re "<") (str.to.re ">") (str.to.re ".") (str.to.re " ")))) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re ":\x5c"))) (re.* (re.++ (re.* (re.union (str.to.re "\x5c") (str.to.re "/") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "\x22") (str.to.re "|") (str.to.re "<") (str.to.re ">") (str.to.re ".") (str.to.re " "))) (re.* (str.to.re "\x5c"))))))))
; www\x2EZSearchResults\x2Ecom\dBar.*sponsor2\.ucmore\.com
(assert (not (str.in.re X (re.++ (str.to.re "www.ZSearchResults.com\x13") (re.range "0" "9") (str.to.re "Bar") (re.* re.allchar) (str.to.re "sponsor2.ucmore.com\x0a")))))
(check-sat)
