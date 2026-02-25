(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re y (re.++ (re.range "2" "6") (re.union (re.+ (str.to_re "243")) (re.* (str.to_re "46"))))))
(assert (str.in_re z (re.++ (re.* (str.to_re "750")) (re.++ (re.* (str.to_re "99")) (str.to_re "21")))))
(assert (str.in_re a (re.* (re.++ (re.++ (str.to_re "3") (re.* (str.to_re "97"))) (str.to_re "7")))))
(assert (str.in_re x (re.++ (str.to_re "662") (re.* (re.* (str.to_re "92"))))))

(assert (= (+ (* 10 (str.len x)) (* 6 (str.len y)) (* (- 5) (str.len z)) (* (- 2) (str.len a))) 6))
(assert (<= (+ (* (- 3) (str.to_int x)) (* (- 2) (str.to_int y)) (* 3 (str.to_int z)) (* 3 (str.to_int a))) 64))

(check-sat)