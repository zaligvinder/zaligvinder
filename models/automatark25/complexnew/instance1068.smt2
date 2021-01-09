(declare-const X String)
; (^(30)[0-5]\d{11}$)|(^(36)\d{12}$)|(^(38[0-8])\d{11}$)
(assert (str.in.re X (re.union (re.++ (str.to.re "30") (re.range "0" "5") ((_ re.loop 11 11) (re.range "0" "9"))) (re.++ (str.to.re "36") ((_ re.loop 12 12) (re.range "0" "9"))) (re.++ (str.to.re "\x0a") ((_ re.loop 11 11) (re.range "0" "9")) (str.to.re "38") (re.range "0" "8")))))
; FreeAccessBar\s+hostie[^\n\r]*CodeguruBrowser\dStableWeb-MailUser-Agent\x3A195\.225\.Subject\x3A
(assert (not (str.in.re X (re.++ (str.to.re "FreeAccessBar") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "hostie") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "CodeguruBrowser") (re.range "0" "9") (str.to.re "StableWeb-MailUser-Agent:195.225.Subject:\x0a")))))
; /filename=[^\n]*\x2ek3g/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".k3g/i\x0a"))))
; /\x2espx([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.spx") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; \(([0-9]{2}|0{1}((x|[0-9]){2}[0-9]{2}))\)\s*[0-9]{3,4}[- ]*[0-9]{4}
(assert (str.in.re X (re.++ (str.to.re "(") (re.union ((_ re.loop 2 2) (re.range "0" "9")) (re.++ ((_ re.loop 1 1) (str.to.re "0")) ((_ re.loop 2 2) (re.union (str.to.re "x") (re.range "0" "9"))) ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re ")") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 4) (re.range "0" "9")) (re.* (re.union (str.to.re "-") (str.to.re " "))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
