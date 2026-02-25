(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.* (re.++ (re.* (re.range "5" "7")) (str.to_re "61")))))
(assert (str.in_re a (re.union (str.to_re "356") (re.* (re.range "1" "3")))))
(assert (str.in_re y (re.union (re.* (re.range "1" "7")) (re.+ (str.to_re "56")))))
(assert (str.in_re z (re.+ (re.union (re.++ (str.to_re "5") (str.to_re "4")) (str.to_re "456")))))

(assert (> (+ (* 7 (str.len x)) (* 5 (str.len y)) (* 5 (str.len z)) (* (- 2) (str.len a))) 79))
(assert (= (+ (- (str.to_int x)) (* 3 (str.to_int z)) (* (- 7) (str.to_int a))) 27))

(check-sat)