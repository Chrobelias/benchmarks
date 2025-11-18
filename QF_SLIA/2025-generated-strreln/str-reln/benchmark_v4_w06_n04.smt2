(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.++ (re.+ (re.+ (str.to_re "17"))) (re.* (str.to_re "532")))))
(assert (str.in_re y (re.+ (re.++ (str.to_re "83") (re.+ (str.to_re "213"))))))
(assert (str.in_re z (re.union (re.* (str.to_re "546")) (re.* (str.to_re "75")))))
(assert (str.in_re a (re.++ (re.+ (re.+ (re.+ (str.to_re "795")))) (str.to_re "84"))))

(assert (< (+ (* 4 (str.len x)) (* 2 (str.len y)) (* 3 (str.len z)) (str.len a)) 62))
(assert (<= (+ (* 4 (str.to_int x)) (* 5 (str.to_int y)) (* (- 8) (str.to_int z)) (* (- 8) (str.to_int a))) 94))
(assert (<= (+ (* (- 10) (str.len z)) (* 2 (str.len a)) (* (- 4) (str.to_int x)) (* 10 (str.to_int z))) 58))
(assert (>= (+ (* 7 (str.len x)) (* 7 (str.len y)) (* 4 (str.len a)) (* 6 (str.to_int x)) (* 5 (str.to_int z)) (* (- 4) (str.to_int a))) 100))

(check-sat)