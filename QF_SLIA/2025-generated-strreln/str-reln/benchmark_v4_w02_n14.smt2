(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.* (re.union (re.+ (re.+ (str.to_re "6"))) (str.to_re "15")))))
(assert (str.in_re y (re.union (re.union (str.to_re "64") (str.to_re "1")) (re.* (str.to_re "1")))))
(assert (str.in_re z (re.++ (re.* (str.to_re "949")) (str.to_re "8"))))
(assert (str.in_re a (re.++ (re.+ (str.to_re "68")) (re.* (str.to_re "16")))))

(assert (< (+ (* 8 (str.len x)) (* 5 (str.len y)) (* (- 8) (str.len z)) (* 6 (str.len a))) 59))
(assert (= (+ (* 4 (str.to_int x)) (* (- 7) (str.to_int y)) (- (str.to_int z)) (* 2 (str.to_int a))) 0))

(check-sat)