(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re y (re.* (re.union (re.* (str.to_re "489")) (str.to_re "933")))))
(assert (str.in_re x (re.union (re.+ (str.to_re "17")) (re.+ (re.+ (str.to_re "94"))))))
(assert (str.in_re z (re.* (re.++ (re.+ (str.to_re "38")) (str.to_re "97")))))
(assert (str.in_re a (re.* (str.to_re "610"))))

(assert (> (+ (- (str.to_int x)) (* (- 2) (str.to_int y)) (* (- 5) (str.to_int z)) (* 3 (str.to_int a))) 1))
(assert (> (+ (* 6 (str.len x)) (- (str.len y)) (* (- 6) (str.len z)) (* (- 9) (str.len a))) 20))

(check-sat)