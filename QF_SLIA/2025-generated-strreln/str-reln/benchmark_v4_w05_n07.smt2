(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.++ (re.* (re.union (str.to_re "58") (re.range "4" "8"))) (str.to_re "553"))))
(assert (str.in_re y (re.++ (str.to_re "27") (re.* (re.union (re.range "6" "9") (str.to_re "6"))))))
(assert (str.in_re z (re.* (re.range "2" "4"))))
(assert (str.in_re a (re.* (re.union (str.to_re "673") (str.to_re "162")))))

(assert (< (+ (* (- 10) (str.len x)) (- (str.len a)) (str.to_int y) (* 3 (str.to_int z)) (* (- 2) (str.to_int a))) 12))
(assert (= (+ (* 9 (str.to_int x)) (* (- 4) (str.to_int y)) (* 9 (str.to_int z)) (* 3 (str.to_int a))) 63))
(assert (<= (+ (* (- 4) (str.to_int x)) (* 6 (str.to_int y)) (* (- 4) (str.to_int z)) (* 7 (str.to_int a))) 5))
(assert (<= (+ (* 3 (str.to_int x)) (* (- 5) (str.to_int y)) (* (- 6) (str.to_int z)) (* (- 2) (str.to_int a))) 85))

(check-sat)