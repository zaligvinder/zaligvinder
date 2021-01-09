(declare-const X String)
; (\[[abiu][^\[\]]*\])([^\[\]]+)(\[/?[abiu]\])
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re "[") (str.to.re "]"))) (str.to.re "\x0a[") (re.union (str.to.re "a") (str.to.re "b") (str.to.re "i") (str.to.re "u")) (re.* (re.union (str.to.re "[") (str.to.re "]"))) (str.to.re "][") (re.opt (str.to.re "/")) (re.union (str.to.re "a") (str.to.re "b") (str.to.re "i") (str.to.re "u")) (str.to.re "]")))))
; /\/[a-z0-9]{9}\.jnlp$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 9 9) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".jnlp/U\x0a"))))
; too[^\n\r]*User-Agent\x3A\sHost\x3A.*IP-WindowsAttachedPalas\x2Estarware\x2Ecom\x2Fdp\x2Fsearch\?x=
(assert (str.in.re X (re.++ (str.to.re "too") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:") (re.* re.allchar) (str.to.re "IP-WindowsAttachedPalas.starware.com/dp/search?x=\x0a"))))
; couponbar\.coupons\.com\dOwner\x3AX-Sender\x3A
(assert (str.in.re X (re.++ (str.to.re "couponbar.coupons.com") (re.range "0" "9") (str.to.re "Owner:X-Sender:\x13\x0a"))))
; /filename=[^\n]*\x2easx/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".asx/i\x0a")))))
(check-sat)
