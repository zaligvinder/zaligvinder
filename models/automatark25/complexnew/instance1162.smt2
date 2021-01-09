(declare-const X String)
; /\x2ejpf([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.jpf") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; ^(\$)?((\d{1,5})|(\d{1,3})(\,\d{3})*)(\.\d{1,2})?$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "$")) (re.union ((_ re.loop 1 5) (re.range "0" "9")) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")))))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
; IndyHost\x3AGirlFriendReferer\x3A
(assert (str.in.re X (str.to.re "IndyHost:GirlFriendReferer:\x0a")))
; /filename=[^\n]*\x2eppt/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ppt/i\x0a"))))
; HXLogOnlyDaemonactivityIterenetFrom\x3AClass
(assert (not (str.in.re X (str.to.re "HXLogOnlyDaemonactivityIterenetFrom:Class\x0a"))))
(check-sat)
