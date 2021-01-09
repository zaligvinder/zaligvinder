(declare-const X String)
; /\/feed\.dll\?pub_id=\d+?\&ua=/Ui
(assert (str.in.re X (re.++ (str.to.re "//feed.dll?pub_id=") (re.+ (re.range "0" "9")) (str.to.re "&ua=/Ui\x0a"))))
; /\/crypt_1_sell\d\d-\d\d.exe$/Ui
(assert (str.in.re X (re.++ (str.to.re "//crypt_1_sell") (re.range "0" "9") (re.range "0" "9") (str.to.re "-") (re.range "0" "9") (re.range "0" "9") re.allchar (str.to.re "exe/Ui\x0a"))))
; /nsrmm[^\x00]*?([\x3b\x7c\x26\x60]|\x24\x28)/
(assert (not (str.in.re X (re.++ (str.to.re "/nsrmm") (re.* (re.comp (str.to.re "\x00"))) (re.union (str.to.re "$(") (str.to.re ";") (str.to.re "|") (str.to.re "&") (str.to.re "`")) (str.to.re "/\x0a")))))
(check-sat)
