(declare-const X String)
; Logger\w+searchreslt\dSubject\x3AHANDY\x2FrssScaner
(assert (not (str.in.re X (re.++ (str.to.re "Logger") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "searchreslt") (re.range "0" "9") (str.to.re "Subject:HANDY/rssScaner\x0a")))))
; /\/elections\.php\?([a-z0-9]+\x3d\d{1,3}\&){9}[a-z0-9]+\x3d\d{1,3}$/U
(assert (str.in.re X (re.++ (str.to.re "//elections.php?") ((_ re.loop 9 9) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "=") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "&"))) (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "=") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "/U\x0a"))))
; \d+([\.|\,][0]+?[1-9]+)?
(assert (not (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (re.union (str.to.re ".") (str.to.re "|") (str.to.re ",")) (re.+ (str.to.re "0")) (re.+ (re.range "1" "9")))) (str.to.re "\x0a")))))
; SecureNet\sHost\x3AX-Mailer\x3Aas\x2Estarware\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "SecureNet") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:X-Mailer:\x13as.starware.com\x0a"))))
; IDENTIFY666User-Agent\x3A\x5BStaticSend=Host\x3Awww\.iggsey\.com
(assert (not (str.in.re X (str.to.re "IDENTIFY666User-Agent:[StaticSend=Host:www.iggsey.com\x0a"))))
(check-sat)
