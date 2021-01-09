(declare-const X String)
; Subject\x3A\swww\x2Esearchwords\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Subject:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.searchwords.com\x0a")))))
; ^([A-z]{2}\d{7})|([A-z]{4}\d{10})$
(assert (str.in.re X (re.union (re.++ ((_ re.loop 2 2) (re.range "A" "z")) ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to.re "\x0a") ((_ re.loop 4 4) (re.range "A" "z")) ((_ re.loop 10 10) (re.range "0" "9"))))))
; ^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[012])/((19|20)\d{2}|\d{2})$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1")))) (str.to.re "/") (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2")))) (str.to.re "/") (re.union (re.++ (re.union (str.to.re "19") (str.to.re "20")) ((_ re.loop 2 2) (re.range "0" "9"))) ((_ re.loop 2 2) (re.range "0" "9"))) (str.to.re "\x0a")))))
; \b(((J(ANUARY|UNE|ULY))|FEBRUARY|MARCH|(A(PRIL|UGUST))|MAY|(SEPT|NOV|DEC)EMBER|OCTOBER))\s*(0?[1-9]|1[0-9]|2[0-9]|3[0-1])\s*(\,)\s*(200[0-9])\b
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "J") (re.union (str.to.re "ANUARY") (str.to.re "UNE") (str.to.re "ULY"))) (str.to.re "FEBRUARY") (str.to.re "MARCH") (re.++ (str.to.re "A") (re.union (str.to.re "PRIL") (str.to.re "UGUST"))) (str.to.re "MAY") (re.++ (re.union (str.to.re "SEPT") (str.to.re "NOV") (str.to.re "DEC")) (str.to.re "EMBER")) (str.to.re "OCTOBER")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "1"))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ",") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a200") (re.range "0" "9"))))
; ICON="[^"]+"
(assert (str.in.re X (re.++ (str.to.re "ICON=\x22") (re.+ (re.comp (str.to.re "\x22"))) (str.to.re "\x22\x0a"))))
(check-sat)
