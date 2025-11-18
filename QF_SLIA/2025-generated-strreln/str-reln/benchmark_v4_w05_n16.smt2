(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.+ (re.* (str.to_re "20")))))
(assert (str.in_re y (re.union (re.+ (str.to_re "259")) (str.to_re "909"))))
(assert (str.in_re z (re.+ (re.+ (re.* (str.to_re "4"))))))
(assert (str.in_re a (re.union (str.to_re "527") (re.union (str.to_re "29") (re.* (str.to_re "2"))))))

(assert (>= (+ (* 5 (str.len a)) (* 9 (str.to_int z))) 16))
(assert (= (+ (* 2 (str.to_int x)) (* 10 (str.to_int y)) (* (- 10) (str.to_int z)) (* 5 (str.to_int a))) 9))
(assert (= (+ (str.len x) (- (str.to_int x))) 14))

(check-sat)