(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.* (str.to_re "974"))))
(assert (str.in_re y (re.* (str.to_re "1"))))
(assert (str.in_re z (re.union (str.to_re "265") (re.+ (re.* (re.* (str.to_re "192")))))))
(assert (str.in_re a (re.++ (re.* (str.to_re "21")) (re.* (str.to_re "20")))))

(assert (<= (+ (* 7 (str.len x)) (* 9 (str.len y)) (* 3 (str.len z)) (- (str.len a))) 32))
(assert (<= (+ (* (- 10) (str.to_int x)) (* (- 4) (str.to_int y)) (* 7 (str.to_int a))) 65))
(assert (<= (+ (* (- 6) (str.to_int x)) (* 3 (str.to_int y)) (* 3 (str.to_int z)) (* 10 (str.to_int a))) 71))
(assert (<= (+ (* (- 9) (str.to_int x)) (* (- 10) (str.to_int y)) (* 10 (str.to_int z)) (* 7 (str.to_int a))) 55))
(assert (>= (+ (* (- 2) (str.to_int x)) (* (- 6) (str.to_int y)) (* (- 10) (str.to_int z)) (* 8 (str.to_int a))) 45))

(check-sat)