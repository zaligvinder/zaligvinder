(declare-const X String)
; spyblpatHost\u{3A}is\u{2E}phpBarFrom\u{3A}Host\u{3A}gdvsotuqwsg\u{2f}dxt\.hd
(assert (str.in_re X (str.to_re "spyblpatHost:is.phpBarFrom:Host:gdvsotuqwsg/dxt.hd\u{a}")))
; /hwid=[^\u{a}\u{26}]+?\u{26}pc=[^\u{a}\u{26}]+?\u{26}localip=[^\u{a}\u{26}]+?\u{26}winver=/U
(assert (str.in_re X (re.++ (str.to_re "/hwid=") (re.+ (re.union (str.to_re "\u{a}") (str.to_re "&"))) (str.to_re "&pc=") (re.+ (re.union (str.to_re "\u{a}") (str.to_re "&"))) (str.to_re "&localip=") (re.+ (re.union (str.to_re "\u{a}") (str.to_re "&"))) (str.to_re "&winver=/U\u{a}"))))
; XP\d+Acme\s+\u{2F}cbn\u{2F}node=Host\u{3A}\u{3F}search\u{3D}versionContact
(assert (str.in_re X (re.++ (str.to_re "XP") (re.+ (re.range "0" "9")) (str.to_re "Acme") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/cbn/node=Host:?search=versionContact\u{a}"))))
(check-sat)
