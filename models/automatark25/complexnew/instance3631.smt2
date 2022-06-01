(declare-const X String)
; /filename=[a-z]+\.jat/
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.+ (re.range "a" "z")) (str.to_re ".jat/\u{a}"))))
; /(XBOX|Nintendo Wii|smarttv|playstation|hbbtv|philipstv|opera tv|inettv)/
(assert (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "XBOX") (str.to_re "Nintendo Wii") (str.to_re "smarttv") (str.to_re "playstation") (str.to_re "hbbtv") (str.to_re "philipstv") (str.to_re "opera tv") (str.to_re "inettv")) (str.to_re "/\u{a}"))))
; Host\u{3a}\s+e2give\.com\s+NETObservemedia\u{2E}dxcdirect\u{2E}comSubject\u{3A}quick\u{2E}qsrch\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "e2give.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "NETObservemedia.dxcdirect.comSubject:quick.qsrch.com\u{a}"))))
(check-sat)
