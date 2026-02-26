(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= y (str.++ x "24" z a "81" "99")))

(assert (str.in_re z (re.union (re.++ (re.+ (str.to_re "714")) (str.to_re "43")) (str.to_re "79"))))
(assert (str.in_re y (re.union (re.union (re.* (re.range "1" "9")) (str.to_re "423")) (re.* (re.range "3" "6")))))
(assert (str.in_re a (re.union (re.++ (str.to_re "62") (str.to_re "990")) (re.* (str.to_re "67")))))
(assert (str.in_re x (re.union (str.to_re "17") (re.union (str.to_re "87") (re.union (re.* (str.to_re "77")) (str.to_re "70"))))))

(assert (<= (+ (* (- 6) (str.len x)) (* 7 (str.len y)) (* 10 (str.len z)) (* 4 (str.len a))) 90))
(assert (<= (+ (* (- 3) (str.to_int x)) (* 8 (str.to_int y)) (- (str.to_int z)) (* 4 (str.to_int a))) 57))

(check-sat)