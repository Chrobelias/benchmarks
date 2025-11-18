(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.* (re.++ (re.range "6" "8") (str.to_re "617")))))
(assert (str.in_re y (re.++ (re.+ (str.to_re "541")) (re.union (str.to_re "2") (str.to_re "9")))))
(assert (str.in_re z (re.+ (str.to_re "80"))))
(assert (str.in_re a (re.++ (str.to_re "220") (re.* (re.union (str.to_re "238") (str.to_re "599"))))))

(assert (> (+ (* (- 6) (str.len x)) (* (- 10) (str.len y)) (* 6 (str.len z)) (* 8 (str.len a))) 13))
(assert (>= (+ (* 2 (str.len a)) (* (- 3) (str.to_int x)) (- (str.to_int y))) 43))
(assert (<= (+ (* (- 8) (str.len x)) (* 6 (str.len y)) (* 2 (str.len z)) (* (- 3) (str.len a))) 68))

(check-sat)