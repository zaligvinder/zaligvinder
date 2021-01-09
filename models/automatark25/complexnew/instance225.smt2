(declare-const X String)
; User-Agent\x3A\d+PortaURLSSKC\x7croogoo\x7c\.cfgmPOPrtCUSTOMPal
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "PortaURLSSKC|roogoo|.cfgmPOPrtCUSTOMPal\x0a"))))
; User-Agent\x3AUser-Agent\x3Awp-includes\x2Ftheme\x2Ephp\x3Fframe_ver2
(assert (str.in.re X (str.to.re "User-Agent:User-Agent:wp-includes/theme.php?frame_ver2\x0a")))
; ^((1[1-9]|2[03489]|3[0347]|5[56]|7[04-9]|8[047]|9[018])\d{8}|(1[2-9]\d|[58]00)\d{6}|8(001111|45464\d))$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.union (re.++ (str.to.re "1") (re.range "1" "9")) (re.++ (str.to.re "2") (re.union (str.to.re "0") (str.to.re "3") (str.to.re "4") (str.to.re "8") (str.to.re "9"))) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "3") (str.to.re "4") (str.to.re "7"))) (re.++ (str.to.re "5") (re.union (str.to.re "5") (str.to.re "6"))) (re.++ (str.to.re "7") (re.union (str.to.re "0") (re.range "4" "9"))) (re.++ (str.to.re "8") (re.union (str.to.re "0") (str.to.re "4") (str.to.re "7"))) (re.++ (str.to.re "9") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "8")))) ((_ re.loop 8 8) (re.range "0" "9"))) (re.++ (re.union (re.++ (str.to.re "1") (re.range "2" "9") (re.range "0" "9")) (re.++ (re.union (str.to.re "5") (str.to.re "8")) (str.to.re "00"))) ((_ re.loop 6 6) (re.range "0" "9"))) (re.++ (str.to.re "8") (re.union (str.to.re "001111") (re.++ (str.to.re "45464") (re.range "0" "9"))))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2emid/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mid/i\x0a"))))
(check-sat)
