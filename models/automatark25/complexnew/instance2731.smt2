(declare-const X String)
; /filename=[^\n]*\x2edib/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".dib/i\x0a")))))
; Subject\x3A\swww\x2Esearchwords\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Subject:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.searchwords.com\x0a")))))
; ^100$|^100.00$|^\d{0,2}(\.\d{1,2})? *%?$
(assert (not (str.in.re X (re.union (str.to.re "100") (re.++ (str.to.re "100") re.allchar (str.to.re "00")) (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (re.* (str.to.re " ")) (re.opt (str.to.re "%")) (str.to.re "\x0a"))))))
; /filename=[^\n]*\x2elzh/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".lzh/i\x0a")))))
(check-sat)
