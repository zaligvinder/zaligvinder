(declare-const X String)
; /filename=[^\n]*\x2emax/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".max/i\x0a")))))
; User-Agent\x3AX-Mailer\x3aHWAEHost\x3AHost\x3AHost\x3aStableUser-Agent\x3AUser-Agent\x3Awww\x2enavisearch\x2enet
(assert (not (str.in.re X (str.to.re "User-Agent:X-Mailer:\x13HWAEHost:Host:Host:StableUser-Agent:User-Agent:www.navisearch.net\x0a"))))
; /filename=[^\n]*\x2eeps/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".eps/i\x0a")))))
; ATL\w+SoftActivitypassword\x3B0\x3BIncorrect
(assert (not (str.in.re X (re.++ (str.to.re "ATL") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "SoftActivity\x13password;0;Incorrect\x0a")))))
; /\x2ephp\x3f[a-z]+=[a-fA-Z0-9]+&[a-z]+=[0-9]+$/iU
(assert (not (str.in.re X (re.++ (str.to.re "/.php?") (re.+ (re.range "a" "z")) (str.to.re "=") (re.+ (re.union (re.range "a" "f") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "&") (re.+ (re.range "a" "z")) (str.to.re "=") (re.+ (re.range "0" "9")) (str.to.re "/iU\x0a")))))
(check-sat)
