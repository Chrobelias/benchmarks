(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.union (str.to_re "4") (re.* (re.* (str.to_re "79"))))))
(assert (str.in_re y (re.+ (re.* (re.++ (str.to_re "1") (str.to_re "519"))))))
(assert (str.in_re z (re.* (re.++ (str.to_re "18") (str.to_re "211")))))
(assert (str.in_re a (re.+ (re.++ (str.to_re "853") (re.union (str.to_re "97") (re.* (str.to_re "27")))))))

(assert (> (+ (* 5 (str.len x)) (* (- 2) (str.len z)) (* (- 10) (str.to_int x))) 0))
(assert (<= (+ (* 10 (str.to_int x)) (* (- 10) (str.to_int y)) (* 2 (str.to_int z)) (* 3 (str.to_int a))) 21))
(assert (= (+ (str.len x) (* (- 10) (str.len y)) (* (- 9) (str.len z)) (* 10 (str.len a))) 96))

(check-sat)