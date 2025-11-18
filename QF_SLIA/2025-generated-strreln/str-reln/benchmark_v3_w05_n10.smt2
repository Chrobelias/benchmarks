(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.++ (re.+ (str.to_re "270")) (re.++ (re.+ (str.to_re "377")) (str.to_re "26")))))
(assert (str.in_re y (re.union (re.+ (str.to_re "340")) (str.to_re "256"))))
(assert (str.in_re z (re.+ (re.* (re.union (str.to_re "40") (re.* (str.to_re "436")))))))

(assert (= (+ (* (- 8) (str.len y)) (* 3 (str.to_int x))) 100))
(assert (= (+ (* (- 6) (str.len x)) (- (str.len y)) (* 10 (str.len z))) 58))
(assert (>= (+ (* (- 2) (str.to_int x)) (str.to_int y)) 33))
(assert (<= (+ (* (- 7) (str.len x)) (* (- 10) (str.len y)) (* 2 (str.len z))) 83))

(check-sat)