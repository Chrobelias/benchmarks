(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re y (re.union (re.* (str.to_re "33")) (re.++ (str.to_re "99") (re.+ (str.to_re "34"))))))
(assert (str.in_re x (re.* (re.union (re.* (str.to_re "5")) (str.to_re "57")))))
(assert (str.in_re z (re.++ (re.* (re.+ (str.to_re "86"))) (str.to_re "446"))))
(assert (str.in_re a (re.++ (re.+ (re.* (str.to_re "32"))) (re.* (str.to_re "8")))))

(assert (>= (+ (str.len x) (* 7 (str.len y)) (* (- 3) (str.len z)) (* (- 7) (str.to_int y))) 50))

(check-sat)