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

(assert (str.in_re x (re.+ (re.++ (str.to_re "3") (str.to_re "67")))))
(assert (str.in_re y (re.* (re.union (re.* (str.to_re "195")) (str.to_re "0")))))
(assert (str.in_re z (re.union (re.union (re.* (re.+ (re.range "2" "9"))) (str.to_re "27")) (str.to_re "89"))))
(assert (str.in_re a (re.union (re.+ (re.range "5" "9")) (str.to_re "72"))))
(assert (str.in_re b (re.++ (re.+ (str.to_re "86")) (str.to_re "94"))))

(assert (= (+ (* (- 5) (str.to_int x)) (* 2 (str.to_int y)) (str.to_int z) (* 10 (str.to_int a)) (* 2 (str.to_int b))) 24))
(assert (< (+ (* 5 (str.len x)) (* 4 (str.len y)) (* 4 (str.len z)) (* 3 (str.len a)) (* (- 7) (str.len b))) 69))

(check-sat)