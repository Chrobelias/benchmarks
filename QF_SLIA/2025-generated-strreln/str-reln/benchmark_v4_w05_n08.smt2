(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.++ (re.+ (str.to_re "6")) (re.++ (str.to_re "917") (str.to_re "502")))))
(assert (str.in_re y (re.union (re.* (str.to_re "18")) (str.to_re "439"))))
(assert (str.in_re z (re.++ (re.+ (str.to_re "35")) (re.range "0" "4"))))
(assert (str.in_re a (re.+ (re.* (re.range "2" "7")))))

(assert (> (+ (* (- 2) (str.to_int x)) (* (- 6) (str.to_int y)) (* 7 (str.to_int z)) (* (- 9) (str.to_int a))) 58))
(assert (< (+ (* (- 2) (str.len x)) (* 6 (str.len z)) (* 9 (str.to_int y))) 12))
(assert (<= (+ (* (- 9) (str.len x)) (* (- 4) (str.len y)) (* (- 5) (str.len z))) 82))
(assert (<= (+ (* (- 4) (str.len x)) (* 5 (str.len y)) (* (- 8) (str.len z)) (- (str.len a))) 86))

(check-sat)