(declare-const X String)
; /filename=[^\n]*\x2epmd/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pmd/i\x0a")))))
; ^\d+(\.\d{2})?$
(assert (not (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
; Host\x3A\d+Subject\x3Aas\x2Estarware\x2Ecom\x2Fdp\x2Fsearch\?x=
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "Subject:as.starware.com/dp/search?x=\x0a")))))
; ^[0-9]{4}((0[1-9])|(1[0-2]))$
(assert (not (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "\x0a")))))
; /\x2emkv([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.mkv") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
