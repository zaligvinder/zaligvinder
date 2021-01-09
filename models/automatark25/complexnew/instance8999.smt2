(declare-const X String)
; \.cfg\x2Fsearchfast\x2F\x22007A-SpyWebsitehttp\x3A\x2F\x2Fsupremetoolbar\.com\x2Findex\.php\?tpid=
(assert (str.in.re X (str.to.re ".cfg/searchfast/\x22007A-SpyWebsitehttp://supremetoolbar.com/index.php?tpid=\x0a")))
; /(00356)?(99|79|77|21|27|22|25)[0-9]{6}/g
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.opt (str.to.re "00356")) (re.union (str.to.re "99") (str.to.re "79") (str.to.re "77") (str.to.re "21") (str.to.re "27") (str.to.re "22") (str.to.re "25")) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "/g\x0a")))))
; (([a-zA-Z0-9\-]*\.{1,}){1,}[a-zA-Z0-9]*)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.+ (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-"))) (re.+ (str.to.re ".")))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))))))
; User-Agent\x3A\s+\x7D\x7BPassword\x3AAnal
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "}{Password:\x1bAnal\x0a")))))
; ([0-9a-z_-]+[\.][0-9a-z_-]{1,3})$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.+ (re.union (re.range "0" "9") (re.range "a" "z") (str.to.re "_") (str.to.re "-"))) (str.to.re ".") ((_ re.loop 1 3) (re.union (re.range "0" "9") (re.range "a" "z") (str.to.re "_") (str.to.re "-")))))))
(check-sat)
