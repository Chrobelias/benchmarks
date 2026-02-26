(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len z) 1000))

(assert (= x (str.++ "42" a y z)))

(assert (str.in_re a (re.union (re.union (re.* (str.to_re "56")) (str.to_re "23")) (re.* (str.to_re "70")))))
(assert (str.in_re x (re.union (str.to_re "416") (re.+ (re.union (re.range "2" "8") (re.* (str.to_re "915")))))))
(assert (str.in_re y (re.+ (str.to_re "66"))))
(assert (str.in_re z (re.++ (re.* (str.to_re "878")) (re.+ (str.to_re "22")))))

(assert (<= (+ (* 2 (str.len x)) (* 3 (str.len y)) (* 7 (str.len z)) (* 4 (str.len a))) 30))
(assert (> (+ (* (- 5) (str.to_int x)) (- (str.to_int y)) (* 3 (str.to_int z)) (* 9 (str.to_int a))) 30))

(check-sat)