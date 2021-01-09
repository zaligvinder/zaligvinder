(declare-const X String)
; s/\b(\w+)\b/ucfirst($1)/ge
(assert (str.in.re X (re.++ (str.to.re "s/") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "/ucfirst1/ge\x0a"))))
; wowokay\d+FTP\s+Host\x3AFiltered\x22reaction\x2Etxt\x22
(assert (str.in.re X (re.++ (str.to.re "wowokay") (re.+ (re.range "0" "9")) (str.to.re "FTP") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Filtered\x22reaction.txt\x22\x0a"))))
(check-sat)
