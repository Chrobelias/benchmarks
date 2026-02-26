(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= x (str.++ a z y "92")))

(assert (str.in_re a (re.++ (str.to_re "25") (re.union (re.++ (re.* (str.to_re "74")) (str.to_re "87")) (str.to_re "7")))))
(assert (str.in_re y (re.union (str.to_re "64") (re.* (re.++ (str.to_re "16") (str.to_re "650"))))))
(assert (str.in_re z (re.+ (re.++ (str.to_re "311") (re.range "0" "4")))))
(assert (str.in_re x (re.+ (re.union (re.range "1" "9") (re.union (str.to_re "6") (re.* (str.to_re "80")))))))

(assert (< (+ (* 5 (str.len z)) (* (- 2) (str.len a)) (* 6 (str.to_int z)) (* 8 (str.to_int a))) 28))

(check-sat)