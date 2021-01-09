(declare-const X String)
; Client\d+Subject\x3AisBysooTBwhenu\x2EcomToolbar
(assert (not (str.in.re X (re.++ (str.to.re "Client") (re.+ (re.range "0" "9")) (str.to.re "Subject:isBysooTBwhenu.com\x1bToolbar\x0a")))))
(check-sat)
