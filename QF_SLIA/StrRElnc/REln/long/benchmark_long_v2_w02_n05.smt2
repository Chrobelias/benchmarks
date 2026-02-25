(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (str.in_re x (re.union (str.to_re "18") (re.+ (re.union (re.+ (str.to_re "26")) (str.to_re "627"))))))
(assert (str.in_re y (re.++ (str.to_re "3") (re.+ (re.union (str.to_re "904") (str.to_re "3"))))))

(assert (< (+ (* (- 2) (str.len x)) (* (- 7) (str.len y)) (* (- 3) (str.to_int x))) 93))

(check-sat)