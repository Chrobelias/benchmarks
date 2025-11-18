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

(assert (str.in_re x (re.+ (re.++ (re.range "2" "4") (str.to_re "80")))))
(assert (str.in_re y (re.union (str.to_re "32") (re.++ (str.to_re "9") (re.++ (re.* (str.to_re "34")) (str.to_re "41"))))))
(assert (str.in_re z (re.union (re.* (str.to_re "1")) (str.to_re "22"))))

(assert (<= (+ (* (- 8) (str.len y)) (* 5 (str.to_int y))) 77))
(assert (= (+ (* 9 (str.len x)) (* (- 2) (str.len y)) (* 7 (str.len z))) 42))
(assert (< (+ (* (- 8) (str.to_int x)) (* 4 (str.to_int y)) (* 9 (str.to_int z))) 45))
(assert (<= (+ (* 5 (str.len x)) (* (- 2) (str.len y)) (str.len z)) 84))

(check-sat)