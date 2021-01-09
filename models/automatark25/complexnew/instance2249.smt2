(declare-const X String)
; ^(([0-9]{3})[-]?)*[0-9]{6,7}$
(assert (str.in.re X (re.++ (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re "-")))) ((_ re.loop 6 7) (re.range "0" "9")) (str.to.re "\x0a"))))
; zopabora\x2EinfocomhoroscopeTravelInsidefromUser-Agent\x3AFrom\x3Awww\x2EZSearchResults\x2EcomExplorer
(assert (str.in.re X (str.to.re "zopabora.infocomhoroscopeTravelInsidefromUser-Agent:From:www.ZSearchResults.com\x13Explorer\x0a")))
; /\x2epac([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.pac") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; \x2Fcbn\x2F\s+Host\x3Abinde2give\.com
(assert (not (str.in.re X (re.++ (str.to.re "/cbn/") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:binde2give.com\x0a")))))
; ^[a-zA-Z]+(([\'\,\.\-][a-zA-Z])?[a-zA-Z]*)*$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* (re.++ (re.opt (re.++ (re.union (str.to.re "'") (str.to.re ",") (str.to.re ".") (str.to.re "-")) (re.union (re.range "a" "z") (re.range "A" "Z")))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z"))))) (str.to.re "\x0a"))))
(check-sat)
