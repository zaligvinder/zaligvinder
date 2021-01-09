(declare-const X String)
; (^([1-9]|[1][0-2]):([0-5][0-9])(\s{0,1})(AM|PM|am|pm|aM|Am|pM|Pm{2,2})$)|(^([0-9]|[1][0-9]|[2][0-3]):([0-5][0-9])$)|(^([1-9]|[1][0-2])(\s{0,1})(AM|PM|am|pm|aM|Am|pM|Pm{2,2})$)|(^([0-9]|[1][0-9]|[2][0-3])$)
(assert (not (str.in.re X (re.union (re.++ (re.union (re.range "1" "9") (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re ":") (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "AM") (str.to.re "PM") (str.to.re "am") (str.to.re "pm") (str.to.re "aM") (str.to.re "Am") (str.to.re "pM") (re.++ (str.to.re "P") ((_ re.loop 2 2) (str.to.re "m")))) (re.range "0" "5") (re.range "0" "9")) (re.++ (re.union (re.range "0" "9") (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re ":") (re.range "0" "5") (re.range "0" "9")) (re.++ (re.union (re.range "1" "9") (re.++ (str.to.re "1") (re.range "0" "2"))) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "AM") (str.to.re "PM") (str.to.re "am") (str.to.re "pm") (str.to.re "aM") (str.to.re "Am") (str.to.re "pM") (re.++ (str.to.re "P") ((_ re.loop 2 2) (str.to.re "m"))))) (re.++ (re.union (re.range "0" "9") (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re "\x0a"))))))
; Hello\x2E\s+ovpl\s+Host\x3AWeHost\x3awww\x2Ewowokay\x2Ecom/wowokaybar\x2Ephp
(assert (str.in.re X (re.++ (str.to.re "Hello.") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ovpl") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:WeHost:www.wowokay.com/wowokaybar.php\x0a"))))
; User-Agent\x3AFrom\x3Awww\x2Eonlinecasinoextra\x2EcomHost\x3A
(assert (str.in.re X (str.to.re "User-Agent:From:www.onlinecasinoextra.comHost:\x0a")))
; ^\d*$
(assert (not (str.in.re X (re.++ (re.* (re.range "0" "9")) (str.to.re "\x0a")))))
; /User-Agent\x3A\s+?mus[\x0d\x0a]/iH
(assert (str.in.re X (re.++ (str.to.re "/User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "mus") (re.union (str.to.re "\x0d") (str.to.re "\x0a")) (str.to.re "/iH\x0a"))))
(check-sat)
