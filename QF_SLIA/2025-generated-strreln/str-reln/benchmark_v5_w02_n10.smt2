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

(assert (str.in_re x (re.+ (re.* (str.to_re "515")))))
(assert (str.in_re y (re.+ (re.++ (str.to_re "44") (str.to_re "219")))))
(assert (str.in_re z (re.* (re.++ (re.* (str.to_re "3")) (re.range "2" "8")))))
(assert (str.in_re a (re.+ (re.union (str.to_re "53") (str.to_re "30")))))
(assert (str.in_re b (re.union (re.union (re.+ (str.to_re "5")) (re.* (str.to_re "42"))) (str.to_re "625"))))

(assert (= (+ (* 8 (str.to_int x)) (* (- 7) (str.to_int y)) (* (- 6) (str.to_int z)) (* (- 6) (str.to_int a)) (* 7 (str.to_int b))) 65))
(assert (> (+ (* 3 (str.len x)) (- (str.len y)) (* 8 (str.len a)) (* (- 10) (str.len b))) 1))

(check-sat)