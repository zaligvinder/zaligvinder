(declare-const X String)
; FTPHost\u{3A}User-Agent\u{3a}User\u{3A}distID=deskwizz\u{2E}com
(assert (str.in_re X (str.to_re "FTPHost:User-Agent:User:distID=deskwizz.com\u{a}")))
; /filename=[^\n]*\u{2e}p2g/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".p2g/i\u{a}"))))
(check-sat)
