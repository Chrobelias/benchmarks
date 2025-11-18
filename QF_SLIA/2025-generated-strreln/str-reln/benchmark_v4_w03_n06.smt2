(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.* (re.* (re.++ (str.to_re "23") (re.* (str.to_re "68")))))))
(assert (str.in_re y (re.* (re.++ (re.union (re.* (str.to_re "37")) (str.to_re "1")) (str.to_re "8")))))
(assert (str.in_re z (re.union (re.union (str.to_re "91") (str.to_re "717")) (re.+ (str.to_re "59")))))
(assert (str.in_re a (re.union (str.to_re "69") (re.* (re.union (str.to_re "1") (str.to_re "8"))))))

(assert (= (+ (* (- 7) (str.to_int x)) (* 4 (str.to_int y)) (* (- 6) (str.to_int z)) (* 6 (str.to_int a))) 90))
(assert (> (+ (* (- 2) (str.len x)) (* 6 (str.len y)) (* 7 (str.len z)) (* (- 6) (str.len a))) 61))
(assert (<= (+ (* 9 (str.len x)) (* (- 8) (str.len y)) (* (- 2) (str.len z)) (str.len a)) 82))

(check-sat)