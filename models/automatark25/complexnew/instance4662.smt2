(declare-const X String)
; FTPHost\u{3A}User-Agent\u{3a}User\u{3A}distID=deskwizz\u{2E}com
(assert (not (str.in_re X (str.to_re "FTPHost:User-Agent:User:distID=deskwizz.com\u{a}"))))
; ^(.*)
(assert (str.in_re X (re.++ (re.* re.allchar) (str.to_re "\u{a}"))))
(check-sat)
