(declare-const X String)
; ^(\d){8}$
(assert (str.in.re X (re.++ ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a"))))
; Host\x3A.*client\x2Ebaigoo\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "client.baigoo.com\x0a")))))
; ((www|http)(\W+\S+[^).,:;?\]\} \r\n$]+))
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.union (str.to.re "www") (str.to.re "http")) (re.+ (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))) (re.+ (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (re.+ (re.union (str.to.re ")") (str.to.re ".") (str.to.re ",") (str.to.re ":") (str.to.re ";") (str.to.re "?") (str.to.re "]") (str.to.re "}") (str.to.re " ") (str.to.re "\x0d") (str.to.re "\x0a") (str.to.re "$"))))))
; /\x00\.\x00\.\x00[\x2f\x5c]/R
(assert (not (str.in.re X (re.++ (str.to.re "/\x00.\x00.\x00") (re.union (str.to.re "/") (str.to.re "\x5c")) (str.to.re "/R\x0a")))))
; User-Agent\x3a.*%3f\s+Subject\x3Aas\x2Estarware\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "%3f") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Subject:as.starware.com\x0a")))))
(check-sat)
