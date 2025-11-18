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

(assert (str.in_re x (re.+ (re.+ (re.++ (str.to_re "436") (re.+ (str.to_re "89")))))))
(assert (str.in_re y (re.* (str.to_re "16"))))
(assert (str.in_re z (re.* (re.union (re.* (str.to_re "709")) (re.+ (str.to_re "910"))))))

(assert (< (+ (- (str.to_int x)) (str.to_int y) (* 7 (str.to_int z))) 11))
(assert (<= (+ (* (- 2) (str.len y)) (* 2 (str.to_int z))) 41))
(assert (< (+ (* 3 (str.to_int x)) (* 2 (str.to_int y)) (str.to_int z)) 69))
(assert (>= (+ (* 4 (str.to_int x)) (* 3 (str.to_int y)) (* (- 4) (str.to_int z))) 64))

(check-sat)