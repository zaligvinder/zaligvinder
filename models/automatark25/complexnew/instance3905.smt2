(declare-const X String)
; Readydoarauzeraqf\x2fvvv\.ulPALTALKHello\x2EMyAgentUser-Agent\x3AIP-FILEUser-Agent\x3AUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "Readydoarauzeraqf/vvv.ulPALTALKHello.MyAgentUser-Agent:IP-FILEUser-Agent:User-Agent:\x0a"))))
; aohobygi\x2fzwiw\s+\+The\+password\+is\x3A
(assert (str.in.re X (re.++ (str.to.re "aohobygi/zwiw") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "+The+password+is:\x0a"))))
; /filename=[^\n]*\x2esum/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".sum/i\x0a")))))
; TPSystem\s+TencentTraveler\s+www\x2eurlblaze\x2enetCurrentHost\x3AWindows
(assert (not (str.in.re X (re.++ (str.to.re "TPSystem") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "TencentTraveler") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.urlblaze.netCurrentHost:Windows\x0a")))))
; 0{3,}|1{3,}|2{3,}|3{3,}|4{3,}|5{3,}|6{3,}|7{3,}|8{3,}|9{3,}
(assert (not (str.in.re X (re.union (re.++ ((_ re.loop 3 3) (str.to.re "0")) (re.* (str.to.re "0"))) (re.++ ((_ re.loop 3 3) (str.to.re "1")) (re.* (str.to.re "1"))) (re.++ ((_ re.loop 3 3) (str.to.re "2")) (re.* (str.to.re "2"))) (re.++ ((_ re.loop 3 3) (str.to.re "3")) (re.* (str.to.re "3"))) (re.++ ((_ re.loop 3 3) (str.to.re "4")) (re.* (str.to.re "4"))) (re.++ ((_ re.loop 3 3) (str.to.re "5")) (re.* (str.to.re "5"))) (re.++ ((_ re.loop 3 3) (str.to.re "6")) (re.* (str.to.re "6"))) (re.++ ((_ re.loop 3 3) (str.to.re "7")) (re.* (str.to.re "7"))) (re.++ ((_ re.loop 3 3) (str.to.re "8")) (re.* (str.to.re "8"))) (re.++ (str.to.re "\x0a") ((_ re.loop 3 3) (str.to.re "9")) (re.* (str.to.re "9")))))))
(check-sat)
