(declare-const X String)
; <textarea(.|\n)*?>((.|\n)*?)</textarea>
(assert (not (str.in.re X (re.++ (str.to.re "<textarea") (re.* (re.union re.allchar (str.to.re "\x0a"))) (str.to.re ">") (re.* (re.union re.allchar (str.to.re "\x0a"))) (str.to.re "</textarea>\x0a")))))
; /filename=[^\n]*\x2ewm/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wm/i\x0a")))))
; /^Referer\x3a[^\r\n]+\/[\w_]{32,}\.html\r$/Hsm
(assert (str.in.re X (re.++ (str.to.re "/Referer:") (re.+ (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "/.html\x0d/Hsm\x0a") ((_ re.loop 32 32) (re.union (str.to.re "_") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.union (str.to.re "_") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))))
; sidesearch\.dropspam\.com\s+Strip-Player\s+
(assert (not (str.in.re X (re.++ (str.to.re "sidesearch.dropspam.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Strip-Player\x1b") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
; User-Agent\x3A\w+data2\.activshopper\.comdll\x3F
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "data2.activshopper.comdll?\x0a"))))
(check-sat)
