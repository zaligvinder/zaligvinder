(declare-const X String)
; ^((http|https|ftp):\/\/)?((.*?):(.*?)@)?([a-zA-Z0-9][a-zA-Z0-9\-]{0,61}[a-zA-Z0-9])((\.[a-zA-Z0-9][a-zA-Z0-9\-]{0,61}[a-zA-Z0-9])*)(:([0-9]{1,5}))?((\/.*?)(\?(.*?))?(\#(.*))?)?$
(assert (str.in.re X (re.++ (re.opt (re.++ (re.union (str.to.re "http") (str.to.re "https") (str.to.re "ftp")) (str.to.re "://"))) (re.opt (re.++ (re.* re.allchar) (str.to.re ":") (re.* re.allchar) (str.to.re "@"))) (re.* (re.++ (str.to.re ".") (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) ((_ re.loop 0 61) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-"))) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))) (re.opt (re.++ (str.to.re ":") ((_ re.loop 1 5) (re.range "0" "9")))) (re.opt (re.++ (re.opt (re.++ (str.to.re "?") (re.* re.allchar))) (re.opt (re.++ (str.to.re "#") (re.* re.allchar))) (str.to.re "/") (re.* re.allchar))) (str.to.re "\x0a") (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) ((_ re.loop 0 61) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-"))) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))))
; /Referer\x3a\x20[\x20-\x7E]*?\/wp\x2dadmin\/[a-z\d\x2d]+?\.php\r\n/Hi
(assert (str.in.re X (re.++ (str.to.re "/Referer: ") (re.* (re.range " " "~")) (str.to.re "/wp-admin/") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-"))) (str.to.re ".php\x0d\x0a/Hi\x0a"))))
; (-?(\d*\.\d{1}?\d*|\d{1,}))
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.opt (str.to.re "-")) (re.union (re.++ (re.* (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 1) (re.range "0" "9")) (re.* (re.range "0" "9"))) (re.+ (re.range "0" "9"))))))
; Host\x3AHost\x3afhfksjzsfu\x2fahm\.uqsHost\x3Afowclxccdxn\x2fuxwn\.ddy
(assert (str.in.re X (str.to.re "Host:Host:fhfksjzsfu/ahm.uqsHost:fowclxccdxn/uxwn.ddy\x0a")))
(check-sat)
