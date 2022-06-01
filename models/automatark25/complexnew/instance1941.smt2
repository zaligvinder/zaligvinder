(declare-const X String)
; dialupvpn\u{5f}pwd\u{2F}iis2ebs\.aspOn-Line\u{2E}\u{2E}\u{2E}Report\u{2F}newsurfer4\u{2F}URLAuthorization\u{3a}
(assert (str.in_re X (str.to_re "dialupvpn_pwd/iis2ebs.aspOn-Line...Report/newsurfer4/URLAuthorization:\u{a}")))
; ^\$(\d{1,3}(\,\d{3})*|(\d+))(\.\d{2})?$
(assert (not (str.in_re X (re.++ (str.to_re "$") (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.+ (re.range "0" "9"))) (re.opt (re.++ (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to_re "\u{a}")))))
; /filename=[^\n]*\u{2e}jfif/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".jfif/i\u{a}"))))
; ^(((\\\\([^\\/:\*\?"\|<>\. ]+))|([a-zA-Z]:\\))(([^\\/:\*\?"\|<>\. ]*)([\\]*))*)$
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.union (re.++ (str.to_re "\u{5c}\u{5c}") (re.+ (re.union (str.to_re "\u{5c}") (str.to_re "/") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "|") (str.to_re "<") (str.to_re ">") (str.to_re ".") (str.to_re " ")))) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to_re ":\u{5c}"))) (re.* (re.++ (re.* (re.union (str.to_re "\u{5c}") (str.to_re "/") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "|") (str.to_re "<") (str.to_re ">") (str.to_re ".") (str.to_re " "))) (re.* (str.to_re "\u{5c}"))))))))
; www\u{2E}ZSearchResults\u{2E}com\dBar.*sponsor2\.ucmore\.com
(assert (not (str.in_re X (re.++ (str.to_re "www.ZSearchResults.com\u{13}") (re.range "0" "9") (str.to_re "Bar") (re.* re.allchar) (str.to_re "sponsor2.ucmore.com\u{a}")))))
(check-sat)
