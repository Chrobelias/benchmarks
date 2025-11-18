(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.* (str.to_re "83"))))
(assert (str.in_re y (re.union (re.+ (re.* (str.to_re "515"))) (re.* (str.to_re "134")))))
(assert (str.in_re z (re.+ (re.union (str.to_re "6") (str.to_re "314")))))
(assert (str.in_re a (re.++ (re.range "6" "8") (re.++ (re.* (str.to_re "523")) (str.to_re "0")))))

(assert (= (+ (* 6 (str.len z)) (* 9 (str.to_int y))) 12))
(assert (> (+ (- (str.to_int x)) (* (- 10) (str.to_int y)) (* 2 (str.to_int a))) 78))

(check-sat)