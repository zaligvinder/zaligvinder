(declare-const X String)
; /\x2eogg([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.ogg") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /null[^\x7d]{0,50}\.body\.innerHTML\s*?\x3d\s*?[\x22\x27]{2}[^\x7d]{0,50}CollectGarbage\x28\s*?\x29[^\x7d]{0,250}document\.write\x28\s*?[\x22\x27]{2}/smi
(assert (not (str.in.re X (re.++ (str.to.re "/null") ((_ re.loop 0 50) (re.comp (str.to.re "}"))) (str.to.re ".body.innerHTML") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.union (str.to.re "\x22") (str.to.re "'"))) ((_ re.loop 0 50) (re.comp (str.to.re "}"))) (str.to.re "CollectGarbage(") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ")") ((_ re.loop 0 250) (re.comp (str.to.re "}"))) (str.to.re "document.write(") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.union (str.to.re "\x22") (str.to.re "'"))) (str.to.re "/smi\x0a")))))
; ^([0-9]{5})([\-]{1}[0-9]{4})?$
(assert (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.++ ((_ re.loop 1 1) (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9")))) (str.to.re "\x0a"))))
; /\x0d\x0aHost\x3a\x20[^\x0d\x0a\x2e]+\x2e[^\x0d\x0a\x2e]+(\x3a\d{1,5})?\x0d\x0a\x0d\x0a$/H
(assert (not (str.in.re X (re.++ (str.to.re "/\x0d\x0aHost: ") (re.+ (re.union (str.to.re "\x0d") (str.to.re "\x0a") (str.to.re "."))) (str.to.re ".") (re.+ (re.union (str.to.re "\x0d") (str.to.re "\x0a") (str.to.re "."))) (re.opt (re.++ (str.to.re ":") ((_ re.loop 1 5) (re.range "0" "9")))) (str.to.re "\x0d\x0a\x0d\x0a/H\x0a")))))
(check-sat)
