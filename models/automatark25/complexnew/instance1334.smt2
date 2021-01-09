(declare-const X String)
; User-Agent\x3AMailerGuarded
(assert (str.in.re X (str.to.re "User-Agent:MailerGuarded\x0a")))
; toolbarplace\x2Ecom\sUser-Agent\x3a\d+\x2Fnewsurfer4\x2Fclient=BysooTBADdcww\x2Edmcast\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "toolbarplace.com") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "/newsurfer4/client=BysooTBADdcww.dmcast.com\x0a")))))
; UBAgentwhenu\x2Ecomwp-includes\x2Ffeed\x2Ephp\x3F
(assert (not (str.in.re X (str.to.re "UBAgentwhenu.com\x13wp-includes/feed.php?\x0a"))))
; /filename=[^\n]*\x2erjs/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".rjs/i\x0a")))))
(check-sat)
