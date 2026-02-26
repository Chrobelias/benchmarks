(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (str.len z) 1000))
(assert (>= (str.len y) 1000))

(assert (= x (str.++ y z "87" a)))

(assert (str.in_re z (re.* (re.union (re.+ (re.* (re.range "0" "3"))) (str.to_re "442")))))
(assert (str.in_re a (re.+ (str.to_re "23"))))
(assert (str.in_re x (re.* (re.range "0" "8"))))
(assert (str.in_re y (re.+ (re.union (re.+ (str.to_re "658")) (str.to_re "7")))))

(assert (>= (+ (* (- 3) (str.len x)) (* 8 (str.len y)) (str.len a) (* (- 5) (str.to_int y)) (* (- 2) (str.to_int z)) (* (- 8) (str.to_int a))) 9))

(check-sat)