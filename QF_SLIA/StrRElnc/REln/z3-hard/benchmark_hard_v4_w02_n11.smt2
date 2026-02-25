(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re y (re.++ (str.to_re "1") (re.++ (str.to_re "223") (re.+ (str.to_re "503"))))))
(assert (str.in_re x (re.++ (str.to_re "230") (re.++ (re.* (str.to_re "73")) (str.to_re "595")))))
(assert (str.in_re z (re.union (str.to_re "82") (re.union (re.* (str.to_re "41")) (re.range "3" "7")))))
(assert (str.in_re a (re.+ (re.++ (re.union (re.range "1" "5") (re.* (str.to_re "76"))) (str.to_re "144")))))

(assert (<= (+ (* 9 (str.len a)) (* 6 (str.to_int x))) 36))

(check-sat)