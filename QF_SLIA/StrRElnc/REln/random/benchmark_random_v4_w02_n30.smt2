(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.union (str.to_re "912") (re.+ (str.to_re "743")))))
(assert (str.in_re z (re.+ (re.* (re.union (str.to_re "18") (str.to_re "373"))))))
(assert (str.in_re a (re.++ (str.to_re "683") (re.+ (re.range "6" "8")))))
(assert (str.in_re y (re.+ (re.union (re.union (str.to_re "0") (re.+ (str.to_re "27"))) (str.to_re "0")))))

(assert (> (+ (* (- 6) (str.len x)) (* (- 6) (str.len y)) (* (- 6) (str.len z)) (* (- 4) (str.len a))) 21))
(assert (<= (+ (* (- 6) (str.to_int x)) (- (str.to_int y)) (str.to_int z)) 12))

(check-sat)