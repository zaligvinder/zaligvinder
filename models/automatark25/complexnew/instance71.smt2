(declare-const X String)
; ^((http|https|ftp|ftps)+(:\/\/))?(www\.)?
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.+ (re.union (str.to.re "http") (str.to.re "https") (str.to.re "ftp") (str.to.re "ftps"))) (str.to.re "://"))) (re.opt (str.to.re "www.")) (str.to.re "\x0a")))))
; User-Agent\x3A\d+Desktop\sIDENTIFY666User-Agent\x3A\x5BStatic
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "Desktop") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "IDENTIFY666User-Agent:[Static\x0a")))))
; /[^\x20-\x7e\r\n]{3}/P
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 3 3) (re.union (re.range " " "~") (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "/P\x0a")))))
(check-sat)
