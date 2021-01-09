(declare-const X String)
; /filename=[^\n]*\x2efli/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".fli/i\x0a")))))
; HTTPwwwProbnymomspyo\x2fzowy
(assert (not (str.in.re X (str.to.re "HTTPwwwProbnymomspyo/zowy\x0a"))))
; Id\x3d\x5b\s+Host\x3A\s+www\x2Eyoogee\x2EcomHost\x3A\<title\>Actual
(assert (not (str.in.re X (re.++ (str.to.re "Id=[") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.yoogee.com\x13Host:<title>Actual\x0a")))))
; ^(1?)(-| ?)(\()?([0-9]{3})(\)|-| |\)-|\) )?([0-9]{3})(-| )?([0-9]{4}|[0-9]{4})$
(assert (str.in.re X (re.++ (re.opt (str.to.re "1")) (re.union (str.to.re "-") (re.opt (str.to.re " "))) (re.opt (str.to.re "(")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re ")") (str.to.re "-") (str.to.re " ") (str.to.re ")-") (str.to.re ") "))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " "))) (re.union ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))) (str.to.re "\x0a"))))
(check-sat)
