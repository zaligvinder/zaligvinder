(declare-const X String)
; Client\d+Subject\x3AisBysooTBwhenu\x2EcomToolbar
(assert (not (str.in.re X (re.++ (str.to.re "Client") (re.+ (re.range "0" "9")) (str.to.re "Subject:isBysooTBwhenu.com\x1bToolbar\x0a")))))
; clvompycem\x2fcen\.vcnHost\x3AUser-Agent\x3A\x0d\x0a
(assert (str.in.re X (str.to.re "clvompycem/cen.vcnHost:User-Agent:\x0d\x0a\x0a")))
; ^(([a-z])+.)+[A-Z]([a-z])+$
(assert (not (str.in.re X (re.++ (re.+ (re.++ (re.+ (re.range "a" "z")) re.allchar)) (re.range "A" "Z") (re.+ (re.range "a" "z")) (str.to.re "\x0a")))))
(check-sat)
