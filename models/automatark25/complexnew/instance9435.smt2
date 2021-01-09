(declare-const X String)
; ^([0-9]{2})(00[1-9]|0[1-9][0-9]|[1-2][0-9][0-9]|3[0-5][0-9]|36[0-6])$
(assert (not (str.in.re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.union (re.++ (str.to.re "00") (re.range "1" "9")) (re.++ (str.to.re "0") (re.range "1" "9") (re.range "0" "9")) (re.++ (re.range "1" "2") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "5") (re.range "0" "9")) (re.++ (str.to.re "36") (re.range "0" "6"))) (str.to.re "\x0a")))))
; traffbest\x2Ebiz\d+\.compress.*sidebar\.activeshopper\.comaresflashdownloader\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "traffbest.biz") (re.+ (re.range "0" "9")) (str.to.re ".compress") (re.* re.allchar) (str.to.re "sidebar.activeshopper.comaresflashdownloader.com\x0a"))))
; Prodaosearch\x2EcomReferer\x3A007User-Agent\x3A
(assert (not (str.in.re X (str.to.re "Prodaosearch.comReferer:007User-Agent:\x0a"))))
; (((file|gopher|news|nntp|telnet|http|ftp|https|ftps|sftp)://)|(www\.))+(([a-zA-Z0-9\._-]+\.[a-zA-Z]{2,6})|([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}))(/[a-zA-Z0-9\&%_\./-~-]*)?
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.++ (re.union (str.to.re "file") (str.to.re "gopher") (str.to.re "news") (str.to.re "nntp") (str.to.re "telnet") (str.to.re "http") (str.to.re "ftp") (str.to.re "https") (str.to.re "ftps") (str.to.re "sftp")) (str.to.re "://")) (str.to.re "www."))) (re.union (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re "_") (str.to.re "-"))) (str.to.re ".") ((_ re.loop 2 6) (re.union (re.range "a" "z") (re.range "A" "Z")))) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")))) (re.opt (re.++ (str.to.re "/") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "&") (str.to.re "%") (str.to.re "_") (str.to.re ".") (re.range "/" "~") (str.to.re "-"))))) (str.to.re "\x0a")))))
; to\s+Host\x3AWeHost\x3a
(assert (str.in.re X (re.++ (str.to.re "to") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:WeHost:\x0a"))))
(check-sat)
