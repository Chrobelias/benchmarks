(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))
(assert (>= (str.to_int z) 0))
(assert (>= (str.len z) 10))

(assert (str.in_re x (re.++ (re.union (str.to_re "0") (str.to_re "20")) (re.+ (re.range "6" "8")))))
(assert (str.in_re y (re.++ (re.+ (re.* (re.range "4" "7"))) (str.to_re "42"))))
(assert (str.in_re z (re.+ (str.to_re "9"))))

(assert (<= (+ (* 2 (str.len x)) (* (- 5) (str.len y)) (* (- 3) (str.len z))) 21))
(assert (> (+ (* 5 (str.len x)) (- (str.len y))) 71))
(assert (= (+ (* 2 (str.to_int x)) (- (str.to_int y)) (- (str.to_int z))) 80))
(assert (= (+ (* 9 (str.to_int y)) (* (- 2) (str.to_int z))) 76))
(assert (> (+ (* 3 (str.len x)) (* 10 (str.len y)) (* 2 (str.len z))) 57))
(assert (> (+ (* 7 (str.to_int x)) (- (str.to_int y)) (* (- 10) (str.to_int z))) 1))

(check-sat)