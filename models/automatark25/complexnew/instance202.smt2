(declare-const X String)
; ^-?[0-9]\d{0,8}(\.\d{1,4})
(assert (str.in_re X (re.++ (re.opt (str.to_re "-")) (re.range "0" "9") ((_ re.loop 0 8) (re.range "0" "9")) (str.to_re "\u{a}.") ((_ re.loop 1 4) (re.range "0" "9")))))
; Root\s+insert\s+haveFTUser-Agent\u{3A}Dayspassword\u{3B}0\u{3B}IncorrectClientsConnected-Host\u{3A}\u{2A}PORT3\u{2A}
(assert (not (str.in_re X (re.++ (str.to_re "Root") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "insert") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "haveFTUser-Agent:Dayspassword;0;IncorrectClientsConnected-Host:*PORT3*\u{a}")))))
; aohobygi\u{2f}zwiw\s+\+The\+password\+is\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "aohobygi/zwiw") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "+The+password+is:\u{a}")))))
; isiz=Xtrastepwebhancer\u{2E}comStubbyOnever\u{3a}Ghost
(assert (not (str.in_re X (str.to_re "isiz=Xtrastepwebhancer.comStubbyOnever:Ghost\u{13}\u{a}"))))
; Login\sHost\u{3A}\w+Host\u{3a}iz=iMeshBar%3f\u{2F}bar_pl\u{2F}chk_bar\.fcgi
(assert (not (str.in_re X (re.++ (str.to_re "Login") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:iz=iMeshBar%3f/bar_pl/chk_bar.fcgi\u{a}")))))
(check-sat)
