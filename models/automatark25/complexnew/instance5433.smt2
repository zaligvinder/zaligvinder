(declare-const X String)
; (\\.|[^"])*
(assert (not (str.in.re X (re.++ (re.* (re.union (re.++ (str.to.re "\x5c") re.allchar) (re.comp (str.to.re "\x22")))) (str.to.re "\x0a")))))
; \x28BDLL\x29\s+CD\x2F.*Host\x3A
(assert (str.in.re X (re.++ (str.to.re "(BDLL)\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "CD/") (re.* re.allchar) (str.to.re "Host:\x0a"))))
; /infor\.php\?uid=\w{52}/Ui
(assert (str.in.re X (re.++ (str.to.re "/infor.php?uid=") ((_ re.loop 52 52) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "/Ui\x0a"))))
; /User-Agent\x3A\s+?mus[\x0d\x0a]/iH
(assert (not (str.in.re X (re.++ (str.to.re "/User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "mus") (re.union (str.to.re "\x0d") (str.to.re "\x0a")) (str.to.re "/iH\x0a")))))
(check-sat)
