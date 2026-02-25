(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.union (re.+ (re.++ (re.range "3" "5") (str.to_re "809"))) (str.to_re "333"))))
(assert (str.in_re a (re.+ (re.union (re.++ (re.* (str.to_re "911")) (re.range "7" "9")) (str.to_re "5")))))
(assert (str.in_re y (re.+ (re.union (str.to_re "979") (re.* (str.to_re "9"))))))
(assert (str.in_re z (re.union (re.+ (re.range "1" "4")) (str.to_re "604"))))

(assert (= (+ (* (- 5) (str.len x)) (* (- 6) (str.len y)) (str.len z) (* 3 (str.to_int x)) (* (- 8) (str.to_int y))) 35))

(check-sat)