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

(assert (str.in_re x (re.+ (str.to_re "12"))))
(assert (str.in_re y (re.++ (str.to_re "2") (re.* (str.to_re "118")))))
(assert (str.in_re z (re.* (re.++ (str.to_re "78") (re.+ (re.range "6" "9"))))))

(assert (< (+ (str.len x) (* 4 (str.len y)) (* (- 6) (str.len z))) 72))
(assert (<= (+ (* (- 6) (str.to_int x)) (* (- 3) (str.to_int y)) (* (- 7) (str.to_int z))) 99))
(assert (= (+ (* (- 2) (str.len x)) (* 2 (str.len y)) (- (str.len z))) 100))
(assert (> (+ (- (str.len x)) (* (- 2) (str.len y)) (* 3 (str.len z))) 14))
(assert (<= (+ (str.len x) (str.len y) (* (- 8) (str.len z))) 27))
(assert (<= (+ (* 7 (str.to_int x)) (* (- 5) (str.to_int z))) 9))

(check-sat)