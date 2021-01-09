(declare-const X String)
; Host\x3A.*Basic.*ProtoUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "Basic") (re.* re.allchar) (str.to.re "ProtoUser-Agent:\x0a")))))
; /\x2ejpeg([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.jpeg") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; this\w+c\.goclick\.com\d
(assert (str.in.re X (re.++ (str.to.re "this") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "c.goclick.com") (re.range "0" "9") (str.to.re "\x0a"))))
; isiz=Xtrastepwebhancer\x2EcomStubbyOnever\x3aGhost
(assert (not (str.in.re X (str.to.re "isiz=Xtrastepwebhancer.comStubbyOnever:Ghost\x13\x0a"))))
(check-sat)
