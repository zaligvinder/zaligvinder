(declare-const X String)
; /(\x19\x00|\x00\x5C)\x00s\x00p\x00f\x00r\x00a\x00m\x00e\x00\.\x00d\x00l\x00l\x00\x00\x00/i
(assert (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "\x19\x00") (str.to.re "\x00\x5c")) (str.to.re "\x00s\x00p\x00f\x00r\x00a\x00m\x00e\x00.\x00d\x00l\x00l\x00\x00\x00/i\x0a"))))
; /^Host\x3a[^\x0d\x0a]+\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\x3a\d{1,5}\x0d?$/mi
(assert (str.in.re X (re.++ (str.to.re "/Host:") (re.+ (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ":") ((_ re.loop 1 5) (re.range "0" "9")) (re.opt (str.to.re "\x0d")) (str.to.re "/mi\x0a"))))
(check-sat)
