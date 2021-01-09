(declare-const X String)
; /\x2edvr-ms([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.dvr-ms") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /filename=[^\n]*\x2easf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".asf/i\x0a")))))
; /^From\x3a[^\r\n]*SpyBuddy/smi
(assert (not (str.in.re X (re.++ (str.to.re "/From:") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "SpyBuddy/smi\x0a")))))
(check-sat)
