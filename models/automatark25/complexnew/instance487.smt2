(declare-const X String)
; \b(((J(ANUARY|UNE|ULY))|FEBRUARY|MARCH|(A(PRIL|UGUST))|MAY|(SEPT|NOV|DEC)EMBER|OCTOBER))\s*(0?[1-9]|1[0-9]|2[0-9]|3[0-1])\s*(\,)\s*(200[0-9])\b
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "J") (re.union (str.to_re "ANUARY") (str.to_re "UNE") (str.to_re "ULY"))) (str.to_re "FEBRUARY") (str.to_re "MARCH") (re.++ (str.to_re "A") (re.union (str.to_re "PRIL") (str.to_re "UGUST"))) (str.to_re "MAY") (re.++ (re.union (str.to_re "SEPT") (str.to_re "NOV") (str.to_re "DEC")) (str.to_re "EMBER")) (str.to_re "OCTOBER")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "1"))) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ",") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}200") (re.range "0" "9")))))
; [0-9A-Za-z]
(assert (str.in_re X (re.++ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z")) (str.to_re "\u{a}"))))
; HANDY\s+newsSoftActivitypassword\u{3B}1\u{3B}Optixtv\u{2E}180solutions\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "HANDY") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "newsSoftActivity\u{13}password;1;Optixtv.180solutions.com\u{a}"))))
; Referer\u{3A}User-Agent\u{3A}From\u{3A}User-Agent\u{3A}adfsgecoiwnf
(assert (not (str.in_re X (str.to_re "Referer:User-Agent:From:User-Agent:adfsgecoiwnf\u{1b}\u{a}"))))
; this\s+MyBrowser\d+Redirector\u{22}ServerHost\u{3A}X-Mailer\u{3A}
(assert (str.in_re X (re.++ (str.to_re "this") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "MyBrowser") (re.+ (re.range "0" "9")) (str.to_re "Redirector\u{22}ServerHost:X-Mailer:\u{13}\u{a}"))))
(check-sat)
