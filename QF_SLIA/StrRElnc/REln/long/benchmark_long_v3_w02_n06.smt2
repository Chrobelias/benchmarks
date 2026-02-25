(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len y) 1000))

(assert (str.in_re x (re.union (str.to_re "519") (re.+ (re.range "3" "6")))))
(assert (str.in_re y (re.++ (re.+ (str.to_re "755")) (re.union (re.* (str.to_re "60")) (str.to_re "967")))))
(assert (str.in_re z (re.++ (str.to_re "778") (re.++ (re.* (str.to_re "552")) (str.to_re "21")))))

(assert (= (+ (* (- 5) (str.len y)) (* 9 (str.len z)) (* 9 (str.to_int x))) 61))

(check-sat)