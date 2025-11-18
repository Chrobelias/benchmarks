(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)
(declare-const b String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))
(assert (>= (str.to_int b) 0))

(assert (str.in_re x (re.* (re.union (re.union (str.to_re "596") (str.to_re "89")) (str.to_re "287")))))
(assert (str.in_re y (re.union (re.* (re.range "1" "5")) (re.union (str.to_re "275") (str.to_re "580")))))
(assert (str.in_re z (re.union (str.to_re "991") (re.union (re.* (str.to_re "108")) (str.to_re "3")))))
(assert (str.in_re a (re.+ (re.++ (str.to_re "81") (str.to_re "91")))))
(assert (str.in_re b (re.* (str.to_re "122"))))

(assert (< (+ (* 5 (str.len x)) (* (- 5) (str.len a)) (* (- 3) (str.len b)) (* 7 (str.to_int x)) (* (- 10) (str.to_int y)) (* 2 (str.to_int z)) (* (- 7) (str.to_int a))) 51))
(assert (= (+ (- (str.to_int x)) (* 5 (str.to_int y)) (* (- 3) (str.to_int z)) (* (- 6) (str.to_int a)) (* 7 (str.to_int b))) 74))

(check-sat)