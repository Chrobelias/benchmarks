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

(assert (str.in_re x (re.+ (re.++ (re.++ (str.to_re "17") (re.* (str.to_re "85"))) (str.to_re "34")))))
(assert (str.in_re y (re.union (re.* (str.to_re "55")) (re.union (str.to_re "72") (str.to_re "99")))))
(assert (str.in_re z (re.++ (str.to_re "536") (re.+ (re.++ (str.to_re "434") (str.to_re "52"))))))

(assert (>= (+ (* 5 (str.len y)) (* (- 6) (str.len z))) 91))
(assert (= (+ (- (str.to_int x)) (* 3 (str.to_int y)) (* (- 2) (str.to_int z))) 51))
(assert (= (+ (str.to_int x) (* (- 2) (str.to_int y)) (* (- 6) (str.to_int z))) 6))
(assert (>= (+ (* 5 (str.to_int x)) (* 3 (str.to_int y)) (* 2 (str.to_int z))) 47))
(assert (<= (+ (* (- 5) (str.len x)) (* 6 (str.len y))) 62))
(assert (< (+ (- (str.len y)) (* 10 (str.len z))) 15))

(check-sat)