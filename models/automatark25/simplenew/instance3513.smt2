(declare-const X String)
; actionID=&url=&load_frameset=1&autologin=0&anchor_string=&server_key=imap&imapuser=(.*)&pass=(.*)&new_lang=pt_BR&select_view=imp
(assert (not (str.in_re X (re.++ (str.to_re "actionID=&url=&load_frameset=1&autologin=0&anchor_string=&server_key=imap&imapuser=") (re.* re.allchar) (str.to_re "&pass=") (re.* re.allchar) (str.to_re "&new_lang=pt_BR&select_view=imp\u{a}")))))
(check-sat)
