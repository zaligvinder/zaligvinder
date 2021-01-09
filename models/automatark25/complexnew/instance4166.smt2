(declare-const X String)
; LIST\]SpamBlockerUtilityTry2FindBasicHost\x3AUser-Agent\x3AAcmeprotocolSpy
(assert (str.in.re X (str.to.re "LIST]SpamBlockerUtilityTry2FindBasicHost:User-Agent:AcmeprotocolSpy\x0a")))
; \d+,?\d+\$?
(assert (not (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (str.to.re ",")) (re.+ (re.range "0" "9")) (re.opt (str.to.re "$")) (str.to.re "\x0a")))))
; ([a-zA-Z]{1}[a-zA-Z]*[\s]{0,1}[a-zA-Z])+([\s]{0,1}[a-zA-Z]+)
(assert (not (str.in.re X (re.++ (re.+ (re.++ ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (re.range "a" "z") (re.range "A" "Z")))) (str.to.re "\x0a") (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z")))))))
(check-sat)
