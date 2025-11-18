(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.union (re.range "7" "9") (re.* (str.to_re "76")))))
(assert (str.in_re y (re.+ (re.union (re.++ (re.+ (str.to_re "66")) (str.to_re "865")) (re.range "7" "9")))))
(assert (str.in_re z (re.++ (re.+ (str.to_re "55")) (str.to_re "80"))))

(assert (> (+ (* (- 10) (str.to_int y)) (* 4 (str.to_int z))) 91))
(assert (<= (+ (* 8 (str.len x)) (* (- 4) (str.len y))) 72))
(assert (>= (+ (* (- 2) (str.len x)) (* (- 4) (str.len y)) (* 4 (str.to_int z))) 10))
(assert (> (+ (* (- 3) (str.len x)) (* 2 (str.len y)) (* (- 4) (str.len z))) 59))

(check-sat)