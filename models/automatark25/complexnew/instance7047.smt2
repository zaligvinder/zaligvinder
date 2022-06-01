(declare-const X String)
; Host\u{3A}Host\u{3A}body=\u{25}21\u{25}21\u{25}21Optix
(assert (str.in_re X (str.to_re "Host:Host:body=%21%21%21Optix\u{13}\u{a}")))
; \.fcgi[^\n\r]*Host\u{3A}\s\u{5D}\u{25}20\u{5B}Port_NETObserveTM_SEARCH3
(assert (str.in_re X (re.++ (str.to_re ".fcgi") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "]%20[Port_NETObserveTM_SEARCH3\u{a}"))))
; /\/\d+\.mp3$/U
(assert (str.in_re X (re.++ (str.to_re "//") (re.+ (re.range "0" "9")) (str.to_re ".mp3/U\u{a}"))))
; Host\u{3A}toUser-Agent\u{3A}ClientsConnected-
(assert (str.in_re X (str.to_re "Host:toUser-Agent:ClientsConnected-\u{a}")))
; (^[1]$)|(^[1]+\d*\.+\d*[1-5]$)
(assert (not (str.in_re X (re.union (str.to_re "1") (re.++ (str.to_re "\u{a}") (re.+ (str.to_re "1")) (re.* (re.range "0" "9")) (re.+ (str.to_re ".")) (re.* (re.range "0" "9")) (re.range "1" "5"))))))
(check-sat)
