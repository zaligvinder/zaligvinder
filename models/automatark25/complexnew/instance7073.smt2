(declare-const X String)
; /\x28\x3f\x3d[^)]{300}/
(assert (str.in.re X (re.++ (str.to.re "/(?=") ((_ re.loop 300 300) (re.comp (str.to.re ")"))) (str.to.re "/\x0a"))))
; (((file|gopher|news|nntp|telnet|http|ftp|https|ftps|sftp)://)|(www\.))+(([a-zA-Z0-9\._-]+\.[a-zA-Z]{2,6})|([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}))(/[a-zA-Z0-9\&%_\./-~-]*)?
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.++ (re.union (str.to.re "file") (str.to.re "gopher") (str.to.re "news") (str.to.re "nntp") (str.to.re "telnet") (str.to.re "http") (str.to.re "ftp") (str.to.re "https") (str.to.re "ftps") (str.to.re "sftp")) (str.to.re "://")) (str.to.re "www."))) (re.union (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re "_") (str.to.re "-"))) (str.to.re ".") ((_ re.loop 2 6) (re.union (re.range "a" "z") (re.range "A" "Z")))) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")))) (re.opt (re.++ (str.to.re "/") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "&") (str.to.re "%") (str.to.re "_") (str.to.re ".") (re.range "/" "~") (str.to.re "-"))))) (str.to.re "\x0a")))))
; ^(([0-1]?[0-9])|([2][0-3])):([0-5][0-9])$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (re.range "0" "1")) (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re ":\x0a") (re.range "0" "5") (re.range "0" "9")))))
(check-sat)
