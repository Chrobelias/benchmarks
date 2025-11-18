(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.++ (re.range "4" "7") (re.union (re.* (str.to_re "15")) (str.to_re "5")))))
(assert (str.in_re y (re.++ (str.to_re "75") (re.* (re.* (re.* (str.to_re "28")))))))
(assert (str.in_re z (re.+ (re.union (re.++ (str.to_re "65") (str.to_re "307")) (str.to_re "762")))))
(assert (str.in_re a (re.* (str.to_re "25"))))

(assert (> (+ (* (- 5) (str.len y)) (* 3 (str.len a)) (* 6 (str.to_int x)) (* 7 (str.to_int z))) 63))
(assert (= (+ (* 6 (str.to_int x)) (* (- 7) (str.to_int y)) (* (- 5) (str.to_int z)) (* 8 (str.to_int a))) 84))
(assert (>= (+ (* 2 (str.to_int x)) (* 3 (str.to_int y)) (* 6 (str.to_int z)) (* 9 (str.to_int a))) 40))
(assert (= (+ (* (- 7) (str.len x)) (* (- 3) (str.len y)) (* 7 (str.len z)) (* (- 7) (str.len a))) 48))
(assert (>= (+ (str.to_int x) (* (- 2) (str.to_int y)) (* (- 5) (str.to_int z)) (* 9 (str.to_int a))) 23))

(check-sat)