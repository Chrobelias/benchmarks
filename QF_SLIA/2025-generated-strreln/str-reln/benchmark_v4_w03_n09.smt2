(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.++ (re.+ (re.* (str.to_re "48"))) (str.to_re "23"))))
(assert (str.in_re y (re.union (re.+ (str.to_re "30")) (re.union (str.to_re "82") (str.to_re "0")))))
(assert (str.in_re z (re.++ (re.range "6" "9") (re.union (str.to_re "55") (re.+ (str.to_re "147"))))))
(assert (str.in_re a (re.* (re.++ (str.to_re "0") (str.to_re "3")))))

(assert (= (+ (* (- 5) (str.len x)) (* 5 (str.len z)) (* 3 (str.to_int y)) (* (- 8) (str.to_int z))) 36))
(assert (< (+ (* 9 (str.to_int x)) (- (str.to_int y)) (* (- 9) (str.to_int z)) (* 7 (str.to_int a))) 15))

(check-sat)