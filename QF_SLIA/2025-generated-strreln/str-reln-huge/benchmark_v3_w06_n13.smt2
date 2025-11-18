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

(assert (str.in_re x (re.* (re.++ (re.++ (re.+ (str.to_re "237")) (str.to_re "820")) (re.range "2" "6")))))
(assert (str.in_re y (re.* (re.+ (re.++ (str.to_re "46") (str.to_re "273"))))))
(assert (str.in_re z (re.+ (re.* (str.to_re "632")))))

(assert (= (+ (* (- 6) (str.len x)) (* 10 (str.len y)) (* (- 2) (str.len z))) 16))
(assert (>= (+ (* (- 3) (str.to_int x)) (* 6 (str.to_int y)) (* (- 3) (str.to_int z))) 63))
(assert (< (+ (* (- 9) (str.to_int x)) (* 10 (str.to_int y)) (str.to_int z)) 46))
(assert (> (+ (* (- 8) (str.len y)) (* 3 (str.to_int y))) 86))
(assert (> (+ (* 4 (str.to_int x)) (* (- 7) (str.to_int y)) (* 8 (str.to_int z))) 35))

(check-sat)