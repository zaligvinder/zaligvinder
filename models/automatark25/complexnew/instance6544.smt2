(declare-const X String)
; \x2Ehtml\s+IDENTIFYwww\x2Eccnnlc\x2Ecomfilename=\x22Referer\x3A
(assert (not (str.in.re X (re.++ (str.to.re ".html") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "IDENTIFYwww.ccnnlc.com\x13filename=\x22Referer:\x0a")))))
; ^\d*((\.\d+)?)*$
(assert (not (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.* (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9"))))) (str.to.re "\x0a")))))
; ^((http:\/\/www\.)|(www\.)|(http:\/\/))[a-zA-Z0-9._-]+\.[a-zA-Z.]{2,5}$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "http://www.") (str.to.re "www.") (str.to.re "http://")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re "_") (str.to.re "-"))) (str.to.re ".") ((_ re.loop 2 5) (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "."))) (str.to.re "\x0a")))))
(check-sat)
