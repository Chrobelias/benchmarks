(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.+ (re.union (str.to_re "18") (re.++ (re.+ (str.to_re "7")) (str.to_re "97"))))))
(assert (str.in_re y (re.union (str.to_re "65") (re.+ (re.+ (re.+ (str.to_re "9")))))))
(assert (str.in_re z (re.union (str.to_re "81") (re.union (re.* (str.to_re "0")) (re.* (str.to_re "81"))))))
(assert (str.in_re a (re.++ (re.union (re.+ (str.to_re "29")) (str.to_re "143")) (str.to_re "82"))))

(assert (<= (+ (* 3 (str.len y)) (* (- 4) (str.to_int a))) 3))
(assert (< (+ (* (- 8) (str.to_int x)) (* 3 (str.to_int y)) (str.to_int z) (* (- 4) (str.to_int a))) 100))
(assert (<= (+ (* 7 (str.len x)) (* 2 (str.len y)) (* 5 (str.len z)) (- (str.len a))) 27))
(assert (<= (+ (* (- 7) (str.to_int x)) (* (- 5) (str.to_int z)) (* 8 (str.to_int a))) 59))

(check-sat)