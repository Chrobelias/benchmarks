(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.++ (re.* (re.++ (str.to_re "641") (re.range "4" "6"))) (str.to_re "37"))))
(assert (str.in_re y (re.++ (re.++ (re.* (str.to_re "274")) (str.to_re "8")) (str.to_re "944"))))
(assert (str.in_re z (re.* (re.* (str.to_re "1")))))
(assert (str.in_re a (re.++ (str.to_re "939") (re.union (re.* (str.to_re "62")) (str.to_re "384")))))

(assert (>= (+ (* 6 (str.len x)) (* 7 (str.len z)) (str.len a) (* (- 9) (str.to_int y))) 54))
(assert (= (+ (* (- 10) (str.to_int x)) (- (str.to_int y)) (* 2 (str.to_int z)) (* 5 (str.to_int a))) 42))
(assert (= (+ (* (- 7) (str.len x)) (* 8 (str.len y)) (* (- 3) (str.len z)) (* 7 (str.len a))) 16))

(check-sat)