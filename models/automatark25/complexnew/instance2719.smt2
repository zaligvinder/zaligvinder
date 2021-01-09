(declare-const X String)
; ^((\+)?(\d{2}[-]))?([0])?(\d{10}){1}?$
(assert (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "+")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-"))) (re.opt (str.to.re "0")) ((_ re.loop 1 1) ((_ re.loop 10 10) (re.range "0" "9"))) (str.to.re "\x0a"))))
; /\x2eoga([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.oga") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /(^|&)(db(username|password|)|cp(username|password|domain))=[^&]*?(\x27|%27)[^&]*?([\x3b\x60]|\x24\x28|%3b|%60|%24%28)/Pmi
(assert (str.in.re X (re.++ (str.to.re "/&") (re.union (re.++ (str.to.re "db") (re.union (str.to.re "username") (str.to.re "password"))) (re.++ (str.to.re "cp") (re.union (str.to.re "username") (str.to.re "password") (str.to.re "domain")))) (str.to.re "=") (re.* (re.comp (str.to.re "&"))) (re.union (str.to.re "'") (str.to.re "%27")) (re.* (re.comp (str.to.re "&"))) (re.union (str.to.re "$(") (str.to.re "%3b") (str.to.re "%60") (str.to.re "%24%28") (str.to.re ";") (str.to.re "`")) (str.to.re "/Pmi\x0a"))))
; ^(\-)?1000([.][0]{1,3})?$|^(\-)?\d{1,3}$|^(\-)?\d{1,3}([.]\d{1,3})$|^(\-)?([.]\d{1,3})$
(assert (not (str.in.re X (re.union (re.++ (re.opt (str.to.re "-")) (str.to.re "1000") (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 3) (str.to.re "0"))))) (re.++ (re.opt (str.to.re "-")) ((_ re.loop 1 3) (re.range "0" "9"))) (re.++ (re.opt (str.to.re "-")) ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9"))) (re.++ (re.opt (str.to.re "-")) (str.to.re "\x0a.") ((_ re.loop 1 3) (re.range "0" "9")))))))
; \stoolbar\.anwb\.nl\s+A-311.*Host\x3aHost\x3Ayddznydqir\x2fevi
(assert (str.in.re X (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "toolbar.anwb.nl") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "A-311") (re.* re.allchar) (str.to.re "Host:Host:yddznydqir/evi\x0a"))))
(check-sat)
