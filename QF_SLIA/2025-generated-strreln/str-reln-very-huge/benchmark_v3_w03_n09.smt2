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

(assert (str.in_re x (re.+ (re.union (re.+ (re.range "1" "7")) (str.to_re "829")))))
(assert (str.in_re y (re.++ (str.to_re "68") (re.+ (str.to_re "8")))))
(assert (str.in_re z (re.union (re.* (re.+ (str.to_re "2"))) (str.to_re "9"))))

(assert (>= (+ (* (- 4) (str.len x)) (* 6 (str.len y)) (* (- 5) (str.len z))) 10))
(assert (> (+ (str.to_int x) (* (- 3) (str.to_int y)) (* (- 7) (str.to_int z))) 0))
(assert (< (+ (* 8 (str.len x)) (* (- 3) (str.len y)) (* 2 (str.len z))) 25))

(check-sat)