(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.++ (re.* (str.to_re "541")) (re.++ (re.* (str.to_re "236")) (str.to_re "14")))))
(assert (str.in_re y (re.* (re.++ (re.* (str.to_re "85")) (str.to_re "351")))))
(assert (str.in_re z (re.union (re.range "4" "7") (re.union (re.++ (re.* (re.range "3" "7")) (str.to_re "42")) (str.to_re "17")))))
(assert (str.in_re a (re.* (str.to_re "54"))))

(assert (<= (+ (* 9 (str.to_int x)) (* 6 (str.to_int y)) (* 5 (str.to_int z)) (* 9 (str.to_int a))) 12))
(assert (>= (+ (* (- 3) (str.len x)) (* (- 5) (str.len z)) (* 7 (str.len a))) 50))
(assert (<= (+ (str.to_int y) (* 5 (str.to_int z)) (* 6 (str.to_int a))) 3))
(assert (>= (+ (* (- 5) (str.len x)) (* 3 (str.len y)) (str.len a) (* 9 (str.to_int z))) 40))

(check-sat)