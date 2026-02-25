(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re y (re.* (re.range "2" "9"))))
(assert (str.in_re z (re.union (str.to_re "987") (re.union (re.+ (str.to_re "24")) (str.to_re "4")))))
(assert (str.in_re a (re.+ (re.union (str.to_re "320") (str.to_re "65")))))
(assert (str.in_re x (re.* (re.+ (re.* (str.to_re "3"))))))

(assert (= (+ (* 10 (str.len a)) (* (- 6) (str.to_int y)) (* (- 2) (str.to_int a))) 51))

(check-sat)