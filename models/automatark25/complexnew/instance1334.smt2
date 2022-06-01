(declare-const X String)
; User-Agent\u{3A}MailerGuarded
(assert (str.in_re X (str.to_re "User-Agent:MailerGuarded\u{a}")))
; toolbarplace\u{2E}com\sUser-Agent\u{3a}\d+\u{2F}newsurfer4\u{2F}client=BysooTBADdcww\u{2E}dmcast\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "toolbarplace.com") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "/newsurfer4/client=BysooTBADdcww.dmcast.com\u{a}")))))
; UBAgentwhenu\u{2E}comwp-includes\u{2F}feed\u{2E}php\u{3F}
(assert (not (str.in_re X (str.to_re "UBAgentwhenu.com\u{13}wp-includes/feed.php?\u{a}"))))
; /filename=[^\n]*\u{2e}rjs/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".rjs/i\u{a}")))))
(check-sat)
