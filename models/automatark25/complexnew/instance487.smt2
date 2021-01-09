(declare-const X String)
; \b(((J(ANUARY|UNE|ULY))|FEBRUARY|MARCH|(A(PRIL|UGUST))|MAY|(SEPT|NOV|DEC)EMBER|OCTOBER))\s*(0?[1-9]|1[0-9]|2[0-9]|3[0-1])\s*(\,)\s*(200[0-9])\b
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "J") (re.union (str.to.re "ANUARY") (str.to.re "UNE") (str.to.re "ULY"))) (str.to.re "FEBRUARY") (str.to.re "MARCH") (re.++ (str.to.re "A") (re.union (str.to.re "PRIL") (str.to.re "UGUST"))) (str.to.re "MAY") (re.++ (re.union (str.to.re "SEPT") (str.to.re "NOV") (str.to.re "DEC")) (str.to.re "EMBER")) (str.to.re "OCTOBER")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "1"))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ",") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a200") (re.range "0" "9")))))
; [0-9A-Za-z]
(assert (str.in.re X (re.++ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z")) (str.to.re "\x0a"))))
; HANDY\s+newsSoftActivitypassword\x3B1\x3BOptixtv\x2E180solutions\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "HANDY") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "newsSoftActivity\x13password;1;Optixtv.180solutions.com\x0a"))))
; Referer\x3AUser-Agent\x3AFrom\x3AUser-Agent\x3Aadfsgecoiwnf
(assert (not (str.in.re X (str.to.re "Referer:User-Agent:From:User-Agent:adfsgecoiwnf\x1b\x0a"))))
; this\s+MyBrowser\d+Redirector\x22ServerHost\x3AX-Mailer\x3A
(assert (str.in.re X (re.++ (str.to.re "this") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "MyBrowser") (re.+ (re.range "0" "9")) (str.to.re "Redirector\x22ServerHost:X-Mailer:\x13\x0a"))))
(check-sat)
