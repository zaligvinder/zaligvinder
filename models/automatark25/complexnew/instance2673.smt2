(declare-const X String)
; actionID=&url=&load_frameset=1&autologin=0&anchor_string=&server_key=imap&imapuser=(.*)&pass=(.*)&new_lang=pt_BR&select_view=imp
(assert (str.in.re X (re.++ (str.to.re "actionID=&url=&load_frameset=1&autologin=0&anchor_string=&server_key=imap&imapuser=") (re.* re.allchar) (str.to.re "&pass=") (re.* re.allchar) (str.to.re "&new_lang=pt_BR&select_view=imp\x0a"))))
; /filename=[^\n]*\x2ewrf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wrf/i\x0a")))))
; /filename=[^\n]*\x2elnk/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".lnk/i\x0a")))))
(check-sat)
