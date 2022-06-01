(declare-const X String)
; User-Agent\u{3a}User-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "User-Agent:User-Agent:\u{a}"))))
; [+-](^0.*)
(assert (str.in_re X (re.++ (re.union (str.to_re "+") (str.to_re "-")) (str.to_re "\u{a}0") (re.* re.allchar))))
; /filename=[^\n]*\u{2e}docx/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".docx/i\u{a}")))))
; Login\sHost\u{3A}\w+Host\u{3a}iz=iMeshBar%3f\u{2F}bar_pl\u{2F}chk_bar\.fcgi
(assert (str.in_re X (re.++ (str.to_re "Login") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:iz=iMeshBar%3f/bar_pl/chk_bar.fcgi\u{a}"))))
; /(DisableSandboxAndDrop|ConfusedClass|FieldAccessVerifierExpl)\.class/ims
(assert (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "DisableSandboxAndDrop") (str.to_re "ConfusedClass") (str.to_re "FieldAccessVerifierExpl")) (str.to_re ".class/ims\u{a}"))))
(check-sat)
