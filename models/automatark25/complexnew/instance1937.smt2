(declare-const X String)
; Host\x3AFrom\x3aKeylogger
(assert (str.in.re X (str.to.re "Host:From:Keylogger\x0a")))
; to=.*JMail\d+HXDownloadasdbiz\x2EbizUser-Agent\x3Awww\x2Eezula\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "to=") (re.* re.allchar) (str.to.re "JMail") (re.+ (re.range "0" "9")) (str.to.re "HXDownloadasdbiz.bizUser-Agent:www.ezula.com\x0a")))))
; /PRIVMSG #new :\x02\x5b(GOOGLE|SCAN)\x5d\x02\x20Scanning/
(assert (not (str.in.re X (re.++ (str.to.re "/PRIVMSG #new :\x02[") (re.union (str.to.re "GOOGLE") (str.to.re "SCAN")) (str.to.re "]\x02 Scanning/\x0a")))))
; /filename=[^\n]*\x2es3m/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".s3m/i\x0a"))))
; ^((http|https|ftp):\/\/)?((.*?):(.*?)@)?([a-zA-Z0-9][a-zA-Z0-9\-]{0,61}[a-zA-Z0-9])((\.[a-zA-Z0-9][a-zA-Z0-9\-]{0,61}[a-zA-Z0-9])*)(:([0-9]{1,5}))?((\/.*?)(\?(.*?))?(\#(.*))?)?$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.union (str.to.re "http") (str.to.re "https") (str.to.re "ftp")) (str.to.re "://"))) (re.opt (re.++ (re.* re.allchar) (str.to.re ":") (re.* re.allchar) (str.to.re "@"))) (re.* (re.++ (str.to.re ".") (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) ((_ re.loop 0 61) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-"))) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))) (re.opt (re.++ (str.to.re ":") ((_ re.loop 1 5) (re.range "0" "9")))) (re.opt (re.++ (re.opt (re.++ (str.to.re "?") (re.* re.allchar))) (re.opt (re.++ (str.to.re "#") (re.* re.allchar))) (str.to.re "/") (re.* re.allchar))) (str.to.re "\x0a") (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) ((_ re.loop 0 61) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-"))) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))))
(check-sat)
