(declare-const X String)
; /Referer\x3a\x20[\x20-\x7E]*?\/wp\x2dadmin\/[a-z\d\x2d]+?\.php\r\n/Hi
(assert (str.in.re X (re.++ (str.to.re "/Referer: ") (re.* (re.range " " "~")) (str.to.re "/wp-admin/") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-"))) (str.to.re ".php\x0d\x0a/Hi\x0a"))))
; /^[^\x00][^\x00\x01]+$/
(assert (str.in.re X (re.++ (str.to.re "/") (re.comp (str.to.re "\x00")) (re.+ (re.union (str.to.re "\x00") (str.to.re "\x01"))) (str.to.re "/\x0a"))))
; spyblpatHost\x3Ais\x2EphpBarFrom\x3AHost\x3Agdvsotuqwsg\x2fdxt\.hd
(assert (not (str.in.re X (str.to.re "spyblpatHost:is.phpBarFrom:Host:gdvsotuqwsg/dxt.hd\x0a"))))
(check-sat)
