(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))
(assert (>= (str.to_int z) 0))
(assert (>= (str.len z) 100))

(assert (str.in_re x (re.union (re.+ (re.++ (str.to_re "286") (re.+ (str.to_re "139")))) (str.to_re "30"))))
(assert (str.in_re y (re.++ (re.++ (re.+ (str.to_re "292")) (re.range "2" "9")) (re.range "6" "9"))))
(assert (str.in_re z (re.++ (str.to_re "484") (re.* (re.* (str.to_re "618"))))))

(assert (= (+ (* 5 (str.to_int x)) (* 6 (str.to_int y)) (* (- 2) (str.to_int z))) 5))
(assert (< (+ (* 4 (str.to_int x)) (* 4 (str.to_int y)) (* 5 (str.to_int z))) 35))
(assert (< (+ (* 9 (str.len x)) (* (- 4) (str.len y)) (* (- 10) (str.len z))) 90))
(assert (< (+ (* (- 2) (str.to_int x)) (* (- 3) (str.to_int y)) (* (- 3) (str.to_int z))) 37))
(assert (< (+ (* (- 8) (str.to_int x)) (- (str.to_int y)) (* 6 (str.to_int z))) 42))
(assert (>= (+ (* 5 (str.len x)) (* 3 (str.len y)) (* 4 (str.len z))) 95))

(check-sat)