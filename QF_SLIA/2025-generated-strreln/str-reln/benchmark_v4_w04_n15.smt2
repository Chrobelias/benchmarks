(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.union (re.+ (re.union (str.to_re "9") (re.+ (str.to_re "77")))) (str.to_re "1"))))
(assert (str.in_re y (re.++ (str.to_re "226") (re.+ (re.union (str.to_re "39") (re.+ (str.to_re "620")))))))
(assert (str.in_re z (re.* (re.+ (re.* (re.* (str.to_re "499")))))))
(assert (str.in_re a (re.* (re.* (str.to_re "60")))))

(assert (= (+ (* (- 2) (str.len x)) (* 4 (str.len z)) (* (- 5) (str.len a))) 75))
(assert (> (+ (* 5 (str.len y)) (* 6 (str.len z)) (* (- 7) (str.to_int x)) (* (- 8) (str.to_int y))) 28))
(assert (> (+ (* 3 (str.len x)) (* (- 4) (str.len y)) (* (- 4) (str.len z))) 44))

(check-sat)