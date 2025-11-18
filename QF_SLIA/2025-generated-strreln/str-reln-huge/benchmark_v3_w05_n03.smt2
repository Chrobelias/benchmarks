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

(assert (str.in_re x (re.union (re.++ (re.* (str.to_re "280")) (re.+ (str.to_re "33"))) (str.to_re "4"))))
(assert (str.in_re y (re.++ (re.++ (re.* (re.+ (re.range "4" "6"))) (str.to_re "3")) (str.to_re "971"))))
(assert (str.in_re z (re.+ (re.++ (re.* (str.to_re "2")) (str.to_re "25")))))

(assert (<= (+ (str.len x) (* (- 3) (str.len y)) (* (- 8) (str.len z))) 87))
(assert (= (+ (* 9 (str.to_int x)) (* (- 2) (str.to_int y)) (* (- 5) (str.to_int z))) 31))
(assert (> (+ (* 7 (str.len y)) (* (- 5) (str.to_int z))) 43))
(assert (< (+ (* (- 10) (str.len x)) (* (- 3) (str.len y)) (* (- 7) (str.len z))) 42))

(check-sat)