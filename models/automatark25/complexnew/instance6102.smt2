(declare-const X String)
; ^[D-d][K-k]-[1-9]{1}[0-9]{3}$
(assert (not (str.in.re X (re.++ (re.range "D" "d") (re.range "K" "k") (str.to.re "-") ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a")))))
; configINTERNAL\.inikwdwww\x2Ewordiq\x2Ecomas\x2Estarware\x2Ecom
(assert (not (str.in.re X (str.to.re "configINTERNAL.inikwdwww.wordiq.com\x1bas.starware.com\x0a"))))
; [^!~/><\|/#%():;{}`_-]
(assert (not (str.in.re X (re.++ (re.union (str.to.re "!") (str.to.re "~") (str.to.re "/") (str.to.re ">") (str.to.re "<") (str.to.re "|") (str.to.re "#") (str.to.re "%") (str.to.re "(") (str.to.re ")") (str.to.re ":") (str.to.re ";") (str.to.re "{") (str.to.re "}") (str.to.re "`") (str.to.re "_") (str.to.re "-")) (str.to.re "\x0a")))))
; \stoolbar\.anwb\.nl.*Host\x3A
(assert (not (str.in.re X (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "toolbar.anwb.nl") (re.* re.allchar) (str.to.re "Host:\x0a")))))
; /\x2emanifest([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.manifest") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
