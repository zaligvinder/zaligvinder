(declare-const X String)
; /^Cookie\x3a\s?SECID=[^\x3b]+?$/mD
(assert (str.in.re X (re.++ (str.to.re "/Cookie:") (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "SECID=") (re.+ (re.comp (str.to.re ";"))) (str.to.re "/mD\x0a"))))
; X-Mailer\x3awlpgskmv\x2flwzo\.qv#Subject\x3aActivity
(assert (str.in.re X (str.to.re "X-Mailer:\x13wlpgskmv/lwzo.qv#Subject:Activity\x0a")))
; /filename=[^\n]*\x2eflac/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".flac/i\x0a")))))
(check-sat)
