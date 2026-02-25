(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (str.len z) 1000))

(assert (str.in_re a (re.* (re.* (str.to_re "1")))))
(assert (str.in_re y (re.* (re.* (str.to_re "491")))))
(assert (str.in_re x (re.++ (re.* (str.to_re "55")) (str.to_re "718"))))
(assert (str.in_re z (re.++ (str.to_re "338") (re.++ (re.* (str.to_re "41")) (re.range "6" "9")))))

(assert (> (+ (* (- 5) (str.len x)) (* 9 (str.len y)) (* (- 3) (str.len z)) (* 8 (str.len a))) 89))
(assert (> (+ (* 6 (str.to_int x)) (* 7 (str.to_int y)) (* 7 (str.to_int z)) (str.to_int a)) 18))

(check-sat)