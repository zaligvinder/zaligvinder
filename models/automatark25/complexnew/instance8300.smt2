(declare-const X String)
; isiz=Xtrastepwebhancer\x2EcomStubbyOnever\x3aGhost
(assert (not (str.in.re X (str.to.re "isiz=Xtrastepwebhancer.comStubbyOnever:Ghost\x13\x0a"))))
; (\w+[\.\_\-]*)*\w+@[\w]+(.)*\w+$
(assert (not (str.in.re X (re.++ (re.* (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.union (str.to.re ".") (str.to.re "_") (str.to.re "-"))))) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "@") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* re.allchar) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a")))))
; /^number=[0-9A-F]{32}$/mC
(assert (not (str.in.re X (re.++ (str.to.re "/number=") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to.re "/mC\x0a")))))
; User-Agent\x3A.*Host\x3A\dName=Your\+Host\+is\x3A
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "Host:") (re.range "0" "9") (str.to.re "Name=Your+Host+is:\x0a")))))
; \$[0-9]?[0-9]?[0-9]?((\,[0-9][0-9][0-9])*)?(\.[0-9][0-9]?)?$
(assert (not (str.in.re X (re.++ (str.to.re "$") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (re.* (re.++ (str.to.re ",") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9")))) (re.opt (re.++ (str.to.re ".") (re.range "0" "9") (re.opt (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
