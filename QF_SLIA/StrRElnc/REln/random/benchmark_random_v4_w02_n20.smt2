(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re y (re.++ (re.+ (re.union (str.to_re "0") (str.to_re "540"))) (str.to_re "64"))))
(assert (str.in_re z (re.* (re.++ (re.+ (str.to_re "57")) (str.to_re "8")))))
(assert (str.in_re a (re.* (re.union (re.+ (str.to_re "77")) (str.to_re "536")))))
(assert (str.in_re x (re.++ (re.union (re.* (str.to_re "33")) (str.to_re "62")) (str.to_re "0"))))

(assert (< (+ (* (- 3) (str.len z)) (* (- 9) (str.len a)) (* (- 4) (str.to_int x))) 4))

(check-sat)