(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= x (str.++ y a z "47")))

(assert (str.in_re z (re.+ (re.union (str.to_re "623") (re.union (str.to_re "760") (str.to_re "47"))))))
(assert (str.in_re a (re.union (str.to_re "43") (re.* (str.to_re "45")))))
(assert (str.in_re y (re.union (str.to_re "34") (re.* (re.range "2" "8")))))
(assert (str.in_re x (re.union (str.to_re "93") (re.+ (re.union (re.range "2" "7") (str.to_re "79"))))))

(assert (< (+ (* 3 (str.to_int x)) (str.to_int y) (* (- 9) (str.to_int z))) 34))
(assert (> (+ (* 2 (str.len x)) (- (str.len y)) (* 9 (str.len z)) (* (- 2) (str.len a))) 44))

(check-sat)