(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= (str.++ x a) (str.++ "71" y z)))

(assert (str.in_re a (re.union (str.to_re "3") (re.union (re.range "7" "9") (re.union (re.* (str.to_re "13")) (str.to_re "574"))))))
(assert (str.in_re x (re.union (str.to_re "672") (re.+ (str.to_re "711")))))
(assert (str.in_re y (re.union (re.range "1" "8") (re.* (re.+ (str.to_re "476"))))))
(assert (str.in_re z (re.union (re.range "5" "9") (re.++ (re.* (str.to_re "683")) (str.to_re "398")))))

(assert (< (+ (* 2 (str.len x)) (* 2 (str.len z)) (* (- 3) (str.len a))) 42))
(assert (> (+ (* 2 (str.to_int x)) (* 5 (str.to_int y)) (* (- 8) (str.to_int z)) (* 3 (str.to_int a))) 15))

(check-sat)