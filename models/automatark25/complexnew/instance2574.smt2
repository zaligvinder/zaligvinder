(declare-const X String)
; User-Agent\x3aUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "User-Agent:User-Agent:\x0a"))))
; [+-](^0.*)
(assert (str.in.re X (re.++ (re.union (str.to.re "+") (str.to.re "-")) (str.to.re "\x0a0") (re.* re.allchar))))
; /filename=[^\n]*\x2edocx/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".docx/i\x0a")))))
; Login\sHost\x3A\w+Host\x3aiz=iMeshBar%3f\x2Fbar_pl\x2Fchk_bar\.fcgi
(assert (str.in.re X (re.++ (str.to.re "Login") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:iz=iMeshBar%3f/bar_pl/chk_bar.fcgi\x0a"))))
; /(DisableSandboxAndDrop|ConfusedClass|FieldAccessVerifierExpl)\.class/ims
(assert (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "DisableSandboxAndDrop") (str.to.re "ConfusedClass") (str.to.re "FieldAccessVerifierExpl")) (str.to.re ".class/ims\x0a"))))
(check-sat)
