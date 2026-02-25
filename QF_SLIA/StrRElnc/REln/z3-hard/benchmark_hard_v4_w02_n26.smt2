(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re a (re.* (re.++ (re.* (re.* (str.to_re "804"))) (str.to_re "31")))))
(assert (str.in_re y (re.union (str.to_re "883") (re.* (re.++ (re.+ (str.to_re "57")) (str.to_re "9"))))))
(assert (str.in_re x (re.* (re.++ (re.* (str.to_re "457")) (str.to_re "7")))))
(assert (str.in_re z (re.* (re.* (re.union (str.to_re "500") (re.range "0" "8"))))))

(assert (< (+ (- (str.len z)) (* 9 (str.to_int y))) 17))

(check-sat)