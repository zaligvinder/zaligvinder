(declare-const X String)
; Download\d+ocllceclbhs\x2fgth
(assert (str.in.re X (re.++ (str.to.re "Download") (re.+ (re.range "0" "9")) (str.to.re "ocllceclbhs/gth\x0a"))))
; /\x2ehlp([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.hlp") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; httphost\dActivityfilename=\x22
(assert (not (str.in.re X (re.++ (str.to.re "httphost") (re.range "0" "9") (str.to.re "Activityfilename=\x22\x0a")))))
; `.*?((http|ftp|https)://[\w#$&+,\/:;=?@.-]+)[^\w#$&+,\/:;=?@.-]*?`i
(assert (not (str.in.re X (re.++ (str.to.re "`") (re.* re.allchar) (re.* (re.union (str.to.re "#") (str.to.re "$") (str.to.re "&") (str.to.re "+") (str.to.re ",") (str.to.re "/") (str.to.re ":") (str.to.re ";") (str.to.re "=") (str.to.re "?") (str.to.re "@") (str.to.re ".") (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "`i\x0a") (re.union (str.to.re "http") (str.to.re "ftp") (str.to.re "https")) (str.to.re "://") (re.+ (re.union (str.to.re "#") (str.to.re "$") (str.to.re "&") (str.to.re "+") (str.to.re ",") (str.to.re "/") (str.to.re ":") (str.to.re ";") (str.to.re "=") (str.to.re "?") (str.to.re "@") (str.to.re ".") (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))))))
; (077|078|079)\s?\d{2}\s?\d{6}
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a07") (re.union (str.to.re "7") (str.to.re "8") (str.to.re "9"))))))
(check-sat)
