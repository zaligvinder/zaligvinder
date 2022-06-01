(declare-const X String)
; Host\u{3A}\d+Subject\u{3A}[^\n\r]*Seconds\-ovplHost\u{3A}Host\u{3A}Download
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "Subject:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Seconds-ovplHost:Host:Download\u{a}")))))
; /^\u{1}\u{2}.{0,50}[a-zA-Z]{10}\u{2f}PK.{0,50}[a-zA-Z]{10}\u{2f}[a-zA-Z]{7}\.classPK/sR
(assert (not (str.in_re X (re.++ (str.to_re "/\u{1}\u{2}") ((_ re.loop 0 50) re.allchar) ((_ re.loop 10 10) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "/PK") ((_ re.loop 0 50) re.allchar) ((_ re.loop 10 10) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "/") ((_ re.loop 7 7) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re ".classPK/sR\u{a}")))))
; Yeah\!Host\u{3A}EnTrYwww\u{2E}ZSearchResults\u{2E}com
(assert (not (str.in_re X (str.to_re "Yeah!Host:EnTrYwww.ZSearchResults.com\u{13}\u{a}"))))
; User-Agent\u{3A}[^\n\r]*Host\u{3A}.*\u{2F}toolbar\u{2F}Host\u{3A}User-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.* re.allchar) (str.to_re "/toolbar/Host:User-Agent:\u{a}")))))
(check-sat)
