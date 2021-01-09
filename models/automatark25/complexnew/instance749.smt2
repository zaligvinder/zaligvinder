(declare-const X String)
; ^(\+48\s*)?\d{2}\s*\d{3}(\s*|\-)\d{2}(\s*|\-)\d{2}$
(assert (str.in.re X (re.++ (re.opt (re.++ (str.to.re "+48") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) ((_ re.loop 2 2) (re.range "0" "9")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "-")) ((_ re.loop 2 2) (re.range "0" "9")) (re.union (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "-")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a"))))
; ad\x2Esearchsquire\x2Ecom[^\n\r]*User-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "ad.searchsquire.com") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "User-Agent:\x0a"))))
; /rapidshare\.com\/files\/(\d+)\/([^\'^\"^\s^>^<^\\^\/]+)/
(assert (not (str.in.re X (re.++ (str.to.re "/rapidshare.com/files/") (re.+ (re.range "0" "9")) (str.to.re "/") (re.+ (re.union (str.to.re "'") (str.to.re "^") (str.to.re "\x22") (str.to.re ">") (str.to.re "<") (str.to.re "\x5c") (str.to.re "/") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/\x0a")))))
; My\x2Fdesktop\x2FWinSessionHost\x3aOnlineTPSystem\x7D\x7C
(assert (not (str.in.re X (str.to.re "My/desktop/WinSessionHost:OnlineTPSystem}|\x0a"))))
(check-sat)
