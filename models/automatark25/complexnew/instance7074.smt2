(declare-const X String)
; User-Agent\x3AUser-Agent\x3a
(assert (not (str.in.re X (str.to.re "User-Agent:User-Agent:\x0a"))))
; /gate\x2ephp\x3freg=[a-zA-Z]{15}/U
(assert (str.in.re X (re.++ (str.to.re "/gate.php?reg=") ((_ re.loop 15 15) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "/U\x0a"))))
; actionID=&url=&load_frameset=1&autologin=0&anchor_string=&server_key=imap&imapuser=(.*)&pass=(.*)&new_lang=pt_BR&select_view=imp
(assert (str.in.re X (re.++ (str.to.re "actionID=&url=&load_frameset=1&autologin=0&anchor_string=&server_key=imap&imapuser=") (re.* re.allchar) (str.to.re "&pass=") (re.* re.allchar) (str.to.re "&new_lang=pt_BR&select_view=imp\x0a"))))
(check-sat)
