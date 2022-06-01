(declare-const X String)
; /Referer\u{3a}\u{20}[\u{20}-\u{7E}]*?\/wp\u{2d}admin\/[a-z\d\u{2d}]+?\.php\r\n/Hi
(assert (str.in_re X (re.++ (str.to_re "/Referer: ") (re.* (re.range " " "~")) (str.to_re "/wp-admin/") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-"))) (str.to_re ".php\u{d}\u{a}/Hi\u{a}"))))
; /^[^\u{0}][^\u{0}\u{1}]+$/
(assert (str.in_re X (re.++ (str.to_re "/") (re.comp (str.to_re "\u{0}")) (re.+ (re.union (str.to_re "\u{0}") (str.to_re "\u{1}"))) (str.to_re "/\u{a}"))))
; spyblpatHost\u{3A}is\u{2E}phpBarFrom\u{3A}Host\u{3A}gdvsotuqwsg\u{2f}dxt\.hd
(assert (not (str.in_re X (str.to_re "spyblpatHost:is.phpBarFrom:Host:gdvsotuqwsg/dxt.hd\u{a}"))))
(check-sat)
