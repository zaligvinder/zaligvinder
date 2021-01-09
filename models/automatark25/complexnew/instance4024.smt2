(declare-const X String)
; ^((\(([1-9]{2})\))(\s)?(\.)?(\-)?([0-9]{0,1})?([0-9]{4})(\s)?(\.)?(\-)?([0-9]{4})|(([1-9]{2}))(\s)?(\.)?(\-)?([0-9]{0,1})?([0-9]{4})(\s)?(\.)?(\-)?([0-9]{4}))$
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re ".")) (re.opt (str.to.re "-")) (re.opt (re.opt (re.range "0" "9"))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re ".")) (re.opt (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "(") ((_ re.loop 2 2) (re.range "1" "9")) (str.to.re ")")) (re.++ ((_ re.loop 2 2) (re.range "1" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re ".")) (re.opt (str.to.re "-")) (re.opt (re.opt (re.range "0" "9"))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re ".")) (re.opt (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9")))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2eani/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ani/i\x0a"))))
; Host\x3AHost\x3AX-Mailer\x3a
(assert (not (str.in.re X (str.to.re "Host:Host:X-Mailer:\x13\x0a"))))
; ^[0-9]*\/{1}[1-9]{1}[0-9]*$
(assert (not (str.in.re X (re.++ (re.* (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re "/")) ((_ re.loop 1 1) (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
